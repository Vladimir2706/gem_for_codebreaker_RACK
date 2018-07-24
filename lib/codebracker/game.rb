require_relative 'interface'
require_relative 'constants'
# require 'pry'

module Codebraker
  class Game
    attr_reader :attempts, :hints, :result_of_comparing

    def initialize
      @secret_code = ''
      @user_suggested_code = ''
      @attempts = 5
      @hints = 2
      @score = 0
      generate_code
    end

    def start(user_suggested_code)
      @user_suggested_code = user_suggested_code
      decrease_attempts
      validate_input(user_suggested_code)
      compare_codes
      show_result_of_comparing
    end

    def win?
      @result_of_comparing == '++++'
    end

    def loose?
      @attempts.zero?
    end

    def generate_code
      @secret_code = (1..4).map { rand(1..6) }.join
    end

    def validate_input(input)
      raise ArgumentError, 'Type exactly 4 integer' unless input.length == 4
      raise ArgumentError, 'Type only integers from 1 to 6' if input =~ /[^1-6]/
    end

    def compare_codes
      @secret_code_for_comparing = @secret_code.dup
      4.times { |i|
        if @secret_code_for_comparing[i] == @user_suggested_code[i]
          @secret_code_for_comparing[i] = '$'
          @user_suggested_code[i] = '+'
        end
      }
      4.times { |i|
        if @secret_code_for_comparing.include?(@user_suggested_code[i])
          @secret_code_for_comparing.sub!(@user_suggested_code[i], '$')
          @user_suggested_code[i] = '-'
        end
      }
      4.times { |i|
        if /[\d]/ =~ @user_suggested_code[i]
          @user_suggested_code[i] = ' '
        end
      }
      @result_of_comparing = @user_suggested_code.dup
    end

    def count_score
      @score = @attempts * 10 + @hints * 15
    end

    def decrease_attempts
      @attempts -= 1
    end

    def use_hint
      return ABSENT_HITNS_MESSAGE if @hints.zero?
      @hints -= 1
      show_hint
    end

    def show_hint
      puts @secret_code[rand(0..3)]
    end

    def show_result_of_comparing
      puts @user_suggested_code
    end
  end
end

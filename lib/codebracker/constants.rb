module Codebraker
  GREETING = "\nWelcome to the Codebreaker!".freeze

  START_MENU = "
  1 - Set User Name
  2 - Play game
  3 - Show score table
  4 - Show rools
  5 - Exit".freeze

  GAME_MENU = "1 - Set User Name \n
               2 - Play\n
               3 - Back to the start menu\n".freeze

  GOODBUY_MESSAGE = "\nGoodbuy! Thanks for good game!".freeze

  QUESTION_FOR_HINT = "\nDo you want to use hint? (y/n)".freeze

  QUESTION_FOR_NEW_GAME = "\nDo you want to play again? (y/n)".freeze

  ABSENT_HITNS_MESSAGE = "\n Sorry, you have no hints".freeze

  LOOSE_MESSAGE = "\nDon't get upset! Try one more time!".freeze

  CONGRATULATIONS = "\n You win! Good job! Try to improove your result :)"

  ROOLS = "
  \nIntroducing Codebreaker\n
Codebreaker is a logic game in which a code-breaker tries to break a secret code
 created by a code-maker. The code-maker, which will be played by the application
 we’re going to write, creates a secret code of four numbers between 1 and 6.\n
The code-breaker then gets some number of chances to break the code. In each turn,
the code-breaker makes a guess of four numbers. The code-maker then marks the guess
with up to four + and - signs.\n
A + indicates an exact match: one of the numbers in the guess is the same as one
of the numbers in the secret code and in the same position.\n
A - indicates a number match: one of the numbers in the guess is the same as one
of the numbers in the secret code but in a different position.\n".freeze
end

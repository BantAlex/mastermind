require "./lib/play_area"
require "./lib/break_code"
require "./lib/make_code"
require "./lib/computer_logic"

# make player choose to make or break

class Game < PlayArea
  def initialize
    rules
    start_game
  end

  def start_game
    puts "What would you like to do?"
    puts "   1 - Break the code"
    puts "   2 - Make the code"
    ans = gets.to_i
    if ans == 1
      guess = BreakCode.new
      guess.player_guess
    elsif ans == 2
      make = ComputerLogic.new
    else
      puts "That's not a valid option."
      start_game
    end
  end
end

play = Game.new

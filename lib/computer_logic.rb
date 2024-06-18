require "./lib/play_area"
require "./lib/break_code"
require "./lib/make_code"
# this is how the computer generates a guess and inputs it in the board
class ComputerLogic < PlayArea
  attr_accessor :player_code, :computer_guess, :colors, :counter

  def initialize
    @player_code = MakeCode.new
    self.colors = %w[R G B M C Y]
    gen_computer_guess
    clear_board
    add_guess_to_board
  end

  def gen_computer_guess
    @computer_guess = colors.sample(4)

    @computer_guess.map! do |code|
      @player_code.colorize(code)
    end

    @computer_guess
  end

  def add_guess_to_board
    @counter = 0
    (1..12).each do |r|
      ("A".."D").each do |c|
        position[r][c] = @computer_guess[@counter]
        @counter += 1
        next unless @counter == 4

        board
        continue?
        @counter = 0
        if @computer_guess == @player_code
          puts "The computer guessed your code correctly ! "
          replay?
        end
        next
      end
    end
    puts "The computer failed to find the your code."
    replay?
  end

  def continue?
    print "Would you like continue?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      gen_computer_guess
    elsif ans == "n"
      puts "Have a nice day!"
      exit
    else
      puts "That's not a valid option."
      continue?
    end
  end

  def replay?
    print "Would you like to play again?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      initialize
    elsif ans == "n"
      puts "Have a nice day!"
      exit
    else
      puts "That's not a valid option."
      replay?
    end
  end
end
test = ComputerLogic.new

require "./lib/play_area"
require "./lib/break_code"
require "./lib/make_code"
# this is how the computer generates a guess and inputs it in the board
class ComputerLogic < PlayArea
  attr_accessor :player_code, :computer_guess, :colors, :counter, :current_row, :code

  def initialize
    @player_code = MakeCode.new
    @code = @player_code.secret_code
    self.colors = %w[R G B M C Y]
    gen_computer_guess
    clear_board
    add_guess_to_board
  end

  def gen_computer_guess(sample = 4)
    @computer_guess = colors.sample(sample)

    @computer_guess.map! do |code|
      @player_code.colorize(code)
    end

    @computer_guess
  end

  def add_guess_to_board
    @counter = 0
    (1..12).each do |r|
      ("A".."D").each do |c|
        @current_row = r
        position[r][c] = @computer_guess[@counter]
        @counter += 1
        next unless @counter == 4

        board
        if @computer_guess == @code
          board
          puts "The computer guessed your code correctly ! "
          replay?
        end
        continue?
        @counter = 0
        next
      end
    end
    puts "The computer failed to find the your code."
    replay?
  end

  def computer_intellect
    (0..3).each do |i|
      # don't put the same color twice

      # remove color from sample if it is not included
      unless @code.include?(position[@current_row].values[i])
        colors.delete(position[@current_row].values[i])
        feedback[@current_row - 1] += "R ".colorize(:red)
      end
      # keep the color in the same spot if it's included
      if position[@current_row].values[i] == @code[i]
        computer_guess[i] = @code[i]
        feedback[@current_row - 1] += "G ".colorize(:green)
      end
      # add yellow feedback
      if @code.include?(position[@current_row].values[i]) && position[@current_row].values[i] != @code[i]
        feedback[@current_row - 1] += "Y ".colorize(:yellow)
      end
    end
  end

  def continue?
    print "Would you like continue?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      gen_computer_guess
      computer_intellect
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

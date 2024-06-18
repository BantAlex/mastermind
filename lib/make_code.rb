require "./lib/play_area"
require "./lib/break_code"
# gets player's code
class MakeCode < BreakCode
  attr_accessor :secret_code, :choice, :code_logic, :colors

  def initialize
    self.code_logic = BreakCode.new
    self.colors = %w[R G B M C Y]
    self.secret_code = Array.new(4, " ")
    add_code_to_board
  end

  def code_board
    puts "                 C O D E"
    puts "            |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|"
    puts "            | #{secret_code[0]} | #{secret_code[1]} | #{secret_code[2]} | #{secret_code[3]} |"
    puts "            |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    print ""
  end

  def code_choice
    code_board
    puts "Please enter a color: "
    @choice = gets.chomp.upcase

    # duplicate check
    if secret_code.include?(colorize(@choice))
      puts "You cannot enter #{@choice} twice"
      code_choice
    end

    # inclusion and length check
    return unless @choice.length != 1 || !colors.include?(@choice)

    puts "That's not a valid option."
    code_choice
  end

  def add_code_to_board
    (0..3).each do |i|
      code_choice
      secret_code[i] = colorize(@choice)
    end
    puts "The chosen code is as follows: "
    code_board
    change_code?
  end

  def change_code?
    puts "Would you like to change it?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      initialize
    elsif ans == "n"
      nil
    else
      puts "That's not a valid option"
      change_code?
    end
  end
end

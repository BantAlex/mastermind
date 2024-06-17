require "./lib/play_area"
# creates the secret code and gets players choice
class SecretCode
  attr_accessor :colors, :secret_code, :match, :choice

  def initialize
    self.colors = %w[R G B M C Y]
    @match = PlayArea.new
    generate_code
    make_choice
    add_choice_to_board
  end

  def generate_code
    @secret_code = colors.sample(4)
    @secret_code.map! do |code|
      colorize(code)
    end
    @secret_code
  end

  def make_choice
    won if found? # maybe add another method for feedback?
    p @secret_code # should be removed when project is done
    print "Please select your color: "
    self.choice = gets.chomp.upcase

    # length and inclusion check
    return choice if choice.length == 1 && colors.include?(choice)

    puts "#{choice} is not a valid option."
    make_choice
  end

  def add_choice_to_board
    (1..12).each do |r|
      ("A".."D").each do |c|
        match.position[r][c] = colorize(choice)
        match.board
        make_choice
      end
    end
  end

  def found?
    match.position.values.any? { |letters| letters.values == @secret_code }
  end

  def won
    print "Congrats! You found the secret code:"
    puts @secret_code.join(" ")
    replay?
  end

  def replay?
    print "Would you like to play again?(y/n): "
    ans = gets.chomp.downcase
    if ans == "y"
      @match.clear_board
      initialize # hope to the almighty this works
    elsif ans == "n"
      puts "Have a nice day!"
      exit
    else
      puts "That's not a valid option."
      replay?
    end
  end

  def colorize(color)
    case color
    when "R" then color.colorize(:red)
    when "G" then color.colorize(:green)
    when "B" then color.colorize(:blue)
    when "M" then color.colorize(:magenta)
    when "C" then color.colorize(:cyan)
    when "Y" then color.colorize(:yellow)
    end
  end
end

test = SecretCode.new

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
    print "Please select your color: "
    self.choice = gets.chomp.upcase

    # length check and inclusion check
    return choice if choice.length == 1 && colors.include?(choice)

    puts "#{choice} is not a valid option."
    make_choice
  end

  def add_choice_to_board
    (1..12).each do |r|
      ("A".."D").each do |c|
        puts "Correct" if found?
        p @secret_code
        match.position[r][c] = colorize(choice)
        match.board
        make_choice
      end
    end
  end

  def found?
    match.position.each_value do |letters|
      true if letters.values == @secret_code
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

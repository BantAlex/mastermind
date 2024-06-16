require "./lib/play_area"
# creates the secret code and gets players choice
class SecretCode
  attr_accessor :colors, :secret_code, :match, :choice

  def initialize
    self.colors = %w[R G B M C Y]
    @match = PlayArea.new
    generate_code
    make_choice
  end

  def generate_code
    @secret_code = colors.sample(4)
  end

  def make_choice
    print "Please select your colors(A1-D1): "
    self.choice = gets.chomp.upcase.split

    # length check
    if choice.length > 4
      puts "That's too many colors!"
      make_choice
    elsif choice.length < 4
      puts "You need #{4 - choice.length} more color(s)!"
      make_choice
    end

    # inclusion check
    choice.each do |chosen_color|
      next if colors.include?(chosen_color)

      puts "#{chosen_color} is not a valid option"
      make_choice
    end

    add_choice_to_board
  end

  def add_choice_to_board
    match.position["A1"] = choice[0]
    match.position["B1"] = choice[1]
    match.position["C1"] = choice[2]
    match.position["D1"] = choice[3]
    match.board
  end

  def colorize
  end
end

test = SecretCode.new

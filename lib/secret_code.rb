require "./lib/play_area"
class SecretCode
  attr_accessor :colors, :secret_code, :match, :choice

  def initialize
    self.colors = %w[R G B M C Y]
    @match = PlayArea.new
    make_choice
  end

  def generate_code
    @secret_code = colors.sample(4)
  end

  def make_choice
    print "Please select your colors(A1-D1): "
    self.choice = gets.chomp.upcase.split

    # check for length
    if choice.length > 4
      puts "That's too many colors!"
      make_choice
    elsif choice.length < 4
      puts "You need #{4 - choice.length} more color(s)!"
      make_choice
    end

    # check for inclusion
    choice.each do |chosen_color|
      next if colors.include?(chosen_color)

      puts "#{chosen_color} is not a valid option"
      make_choice
    end
  end
end

test = SecretCode.new

require "./lib/play_area"
class SecretCode
  attr_accessor :colors, :secret_code, :match

  def initialize
    self.colors = %w[R G B M C Y]
    @match = PlayArea.new
  end

  def generate_code
    @secret_code = colors.sample(4)
  end

  def make_choice
    choice = gets.chomp
  end
end

test = SecretCode.new

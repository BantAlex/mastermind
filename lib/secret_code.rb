require "./lib/play_area"
class SecretCode
  attr_accessor :colors, :secret_code, :match

  def initialize
    @match = PlayArea.new
    self.colors = %w[R G B P O Y]
  end

  def get_code
    @secret_code = colors.sample(4)
  end
end

test = SecretCode.new
p test.get_code

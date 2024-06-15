class PlayArea
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    clear_board
  end

  def clear_board
    self.a1 = self.b1 = self.c1 = self.a2 = self.b2 = self.c2 = self.a3 = self.b3 = self.c3 = " "
    board
  end

  def board
    puts "    A   B   C   D"
    puts "  |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|"
    puts "1 | #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "2 | #{a2} | #{b2} | #{c2} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "3 | #{a3} | #{b3} | #{c3} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "4 | #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "5 | #{a2} | #{b2} | #{c2} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "6 | #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "7 | #{a2} | #{b2} | #{c2} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "8 | #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "9 | #{a2} | #{b2} | #{c2} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "10| #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "11| #{a2} | #{b2} | #{c2} | #{c1} |"
    puts "  |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "12| #{a1} | #{b1} | #{c1} | #{c1} |"
    puts "  |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

board = PlayArea.new

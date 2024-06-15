require "colorize"
class PlayArea
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

  def initialize
    board
  end

  def clear_board
  end

  def pos(row, column)
    " "
  end

  def board
    puts "    A   B   C   D"
    puts "   |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|"
    puts "1  | #{pos(1, 'A')} | #{pos(1, 'B')} | #{pos(1, 'C')} | #{pos(1, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "2  | #{pos(2, 'A')} | #{pos(2, 'B')} | #{pos(2, 'C')} | #{pos(2, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "3  | #{pos(3, 'A')} | #{pos(3, 'B')} | #{pos(3, 'C')} | #{pos(3, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "4  | #{pos(4, 'A')} | #{pos(4, 'B')} | #{pos(4, 'C')} | #{pos(4, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "5  | #{pos(5, 'A')} | #{pos(5, 'B')} | #{pos(5, 'C')} | #{pos(5, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "6  | #{pos(6, 'A')} | #{pos(6, 'B')} | #{pos(6, 'C')} | #{pos(6, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "7  | #{pos(7, 'A')} | #{pos(7, 'B')} | #{pos(7, 'C')} | #{pos(7, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "8  | #{pos(8, 'A')} | #{pos(8, 'B')} | #{pos(8, 'C')} | #{pos(8, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "9  | #{pos(9, 'A')} | #{pos(9, 'B')} | #{pos(9, 'C')} | #{pos(9, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "10 | #{pos(10, 'A')} | #{pos(10, 'B')} | #{pos(10, 'C')} | #{pos(10, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "11 | #{pos(11, 'A')} | #{pos(11, 'B')} | #{pos(11, 'C')} | #{pos(11, 'D')} |"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "12 | #{pos(12, 'A')} | #{pos(12, 'B')} | #{pos(12, 'C')} | #{pos(12, 'D')} |"
    puts "   |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

board = PlayArea.new

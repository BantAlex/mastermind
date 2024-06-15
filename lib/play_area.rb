require "colorize"
class PlayArea
  attr_accessor

  def initialize
    board
  end

  def clear_board
  end

  def pos_gen(row, column)
    "R".colorize(:red)
  end

  def board
    puts "     A   B   C   D |    F    |"
    puts "   |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺⎺⎺⎺⎺⎺⎺|"
    puts "1  | #{pos_gen(1, 'A')} | #{pos_gen(1, 'B')} | #{pos_gen(1, 'C')} | #{pos_gen(1, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "2  | #{pos_gen(2, 'A')} | #{pos_gen(2, 'B')} | #{pos_gen(2, 'C')} | #{pos_gen(2, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "3  | #{pos_gen(3, 'A')} | #{pos_gen(3, 'B')} | #{pos_gen(3, 'C')} | #{pos_gen(3, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "4  | #{pos_gen(4, 'A')} | #{pos_gen(4, 'B')} | #{pos_gen(4, 'C')} | #{pos_gen(4, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "5  | #{pos_gen(5, 'A')} | #{pos_gen(5, 'B')} | #{pos_gen(5, 'C')} | #{pos_gen(5, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "6  | #{pos_gen(6, 'A')} | #{pos_gen(6, 'B')} | #{pos_gen(6, 'C')} | #{pos_gen(6, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "7  | #{pos_gen(7, 'A')} | #{pos_gen(7, 'B')} | #{pos_gen(7, 'C')} | #{pos_gen(7, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "8  | #{pos_gen(8, 'A')} | #{pos_gen(8, 'B')} | #{pos_gen(8, 'C')} | #{pos_gen(8, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "9  | #{pos_gen(9, 'A')} | #{pos_gen(9, 'B')} | #{pos_gen(9, 'C')} | #{pos_gen(9, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "10 | #{pos_gen(10, 'A')} | #{pos_gen(10, 'B')} | #{pos_gen(10, 'C')} | #{pos_gen(10, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "11 | #{pos_gen(11, 'A')} | #{pos_gen(11, 'B')} | #{pos_gen(11, 'C')} | #{pos_gen(11, 'D')} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "12 | #{pos_gen(12, 'A')} | #{pos_gen(12, 'B')} | #{pos_gen(12, 'C')} | #{pos_gen(12, 'D')} | Feedback"
    puts "   |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

board = PlayArea.new

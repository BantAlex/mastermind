require "colorize"

# creates the board
class PlayArea
  attr_accessor :position, :feedback

  def initialize
    puts ""
    puts "                  Welcome to Mastermind!      ".colorize(:magenta)
    puts "                  ⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻"
    puts ""
    puts "There are 6 colors avaible, 4 of wich will be the secret code"
    puts ""
    puts "Thsese colors are:"
    puts "#{'R'.colorize(:red)} - Red - In feedback: means that you have a wrong color."
    puts "#{'G'.colorize(:green)} - Green - In feedback: means that you have a right color in the right position."
    puts "#{'B'.colorize(:blue)} - Blue"
    puts "#{'M'.colorize(:magenta)} - Magenta"
    puts "#{'C'.colorize(:cyan)} - Cyan"
    puts "#{'Y'.colorize(:yellow)} - Yellow - In feedback: means that you have a right color in the wrong position."
    puts ""
    clear_board
    puts "You have 12 tries to find the correct colors and their position on the board."
    puts "You should input one color at a time."
    puts ""
  end

  def clear_board
    self.position = Hash.new { |h, k| h[k] = {} }
    self.feedback = Array.new(12, " ")
    ("A".."D").each do |c|
      (1..12).each do |r|
        position[r][c] = " "
      end
    end
    board
  end

  def board
    puts "               A   B   C   D | Feedback |"
    puts "             |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺|"
    puts "          1  | #{position[1]['A']} | #{position[1]['B']} | #{position[1]['C']} | #{position[1]['D']} | #{feedback[0]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          2  | #{position[2]['A']} | #{position[2]['B']} | #{position[2]['C']} | #{position[2]['D']} | #{feedback[1]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          3  | #{position[3]['A']} | #{position[3]['B']} | #{position[3]['C']} | #{position[3]['D']} | #{feedback[2]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          4  | #{position[4]['A']} | #{position[4]['B']} | #{position[4]['C']} | #{position[4]['D']} | #{feedback[3]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          5  | #{position[5]['A']} | #{position[5]['B']} | #{position[5]['C']} | #{position[5]['D']} | #{feedback[4]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          6  | #{position[6]['A']} | #{position[6]['B']} | #{position[6]['C']} | #{position[6]['D']} | #{feedback[5]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          7  | #{position[7]['A']} | #{position[7]['B']} | #{position[7]['C']} | #{position[7]['D']} | #{feedback[6]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          8  | #{position[8]['A']} | #{position[8]['B']} | #{position[8]['C']} | #{position[8]['D']} | #{feedback[7]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          9  | #{position[9]['A']} | #{position[9]['B']} | #{position[9]['C']} | #{position[9]['D']} | #{feedback[8]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          10 | #{position[10]['A']} | #{position[10]['B']} | #{position[10]['C']} | #{position[10]['D']} | #{feedback[9]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          11 | #{position[11]['A']} | #{position[11]['B']} | #{position[11]['C']} | #{position[11]['D']} | #{feedback[10]}"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          12 | #{position[12]['A']} | #{position[12]['B']} | #{position[12]['C']} | #{position[12]['D']} | #{feedback[11]}"
    puts "             |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

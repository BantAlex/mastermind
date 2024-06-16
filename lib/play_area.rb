require "colorize"

# creates the board
class PlayArea
  attr_accessor :position

  def initialize
    puts ""
    puts "                  Welcome to Mastermind!      ".colorize(:magenta)
    puts "                  ⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻"
    puts ""
    puts "There are 6 colors avaible, 4 of wich will be the secret code"
    puts ""
    puts "Thsese colors are:"
    puts "#{'R'.colorize(:red)} - Red"
    puts "#{'G'.colorize(:green)} - Green"
    puts "#{'B'.colorize(:blue)} - Blue"
    puts "#{'M'.colorize(:magenta)} - Magenta"
    puts "#{'C'.colorize(:cyan)} - Cyan"
    puts "#{'Y'.colorize(:yellow)} - Yellow"
    puts ""
    clear_board
    puts "You have 12 tries to find the correct colors and their position on the board."
    puts ""
  end

  def clear_board
    self.position = Hash.new { |h, k| h[k] = {} }
    ("A".."D").each do |c|
      (1..12).each do |r|
        pos_name = c.to_s + r.to_s
        position[r][pos_name] = " "
      end
    end
    board
  end

  def board
    puts "               A   B   C   D | Feedback |"
    puts "             |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺|"
    puts "          1  | #{position[1]['A1']} | #{position[1]['B1']} | #{position[1]['C1']} | #{position[1]['D1']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          2  | #{position[2]['A2']} | #{position[2]['B2']} | #{position[2]['C2']} | #{position[2]['D2']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          3  | #{position[3]['A3']} | #{position[3]['B3']} | #{position[3]['C3']} | #{position[3]['D3']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          4  | #{position[4]['A4']} | #{position[4]['B4']} | #{position[4]['C4']} | #{position[4]['D4']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          5  | #{position[5]['A5']} | #{position[5]['B5']} | #{position[5]['C5']} | #{position[5]['D5']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          6  | #{position[6]['A6']} | #{position[6]['B6']} | #{position[6]['C6']} | #{position[6]['D6']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          7  | #{position[7]['A7']} | #{position[7]['B7']} | #{position[7]['C7']} | #{position[7]['D7']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          8  | #{position[8]['A8']} | #{position[8]['B8']} | #{position[8]['C8']} | #{position[8]['D8']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          9  | #{position[9]['A9']} | #{position[9]['B9']} | #{position[9]['C9']} | #{position[9]['D9']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          10 | #{position[10]['A10']} | #{position[10]['B10']} | #{position[10]['C10']} | #{position[10]['D10']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          11 | #{position[11]['A11']} | #{position[11]['B11']} | #{position[11]['C11']} | #{position[11]['D11']} | Feedback"
    puts "             |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "          12 | #{position[12]['A12']} | #{position[12]['B12']} | #{position[12]['C12']} | #{position[12]['D12']} | Feedback"
    puts "             |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

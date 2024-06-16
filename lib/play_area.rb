require "colorize"
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
    puts ""
    clear_board
    puts "You have 12 tries to find the correct colors and their position on the board."
    puts ""
  end

  def clear_board
    self.position = {}
    ("A".."D").each do |c|
      (1..12).each do |r|
        pos_name = c.to_s + r.to_s
        position[pos_name] = " "
      end
    end
    board
  end

  def board
    puts "     A   B   C   D | Feedback |"
    puts "   |⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺|⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺|"
    puts "1  | #{position['A1']} | #{position['B1']} | #{position['C1']} | #{position['D1']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "2  | #{position['A2']} | #{position['B2']} | #{position['C2']} | #{position['D2']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "3  | #{position['A3']} | #{position['B3']} | #{position['C3']} | #{position['D3']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "4  | #{position['A4']} | #{position['B4']} | #{position['C4']} | #{position['D4']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "5  | #{position['A5']} | #{position['B5']} | #{position['C5']} | #{position['D5']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "6  | #{position['A6']} | #{position['B6']} | #{position['C6']} | #{position['D6']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "7  | #{position['A7']} | #{position['B7']} | #{position['C7']} | #{position['D7']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "8  | #{position['A8']} | #{position['B8']} | #{position['C8']} | #{position['D8']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "9  | #{position['A9']} | #{position['B9']} | #{position['C9']} | #{position['D9']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "10 | #{position['A10']} | #{position['B10']} | #{position['C10']} | #{position['D10']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "11 | #{position['A11']} | #{position['B11']} | #{position['C11']} | #{position['D11']} | Feedback"
    puts "   |⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|⎻⎻⎻|"
    puts "12 | #{position['A12']} | #{position['B12']} | #{position['C12']} | #{position['D12']} | Feedback"
    puts "   |⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|⎽⎽⎽|"
    puts ""
  end
end

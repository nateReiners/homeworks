require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over

  end

  def take_turn
    show_sequence
    system("cls")
    guess = require_sequence
    if guess != seq
      game_over = true
      game_over_message
      reset_game
      puts "Beginning new game. . ."
      sleep(2)
    else
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    print "\n"
    seq.each do |col|
      print " #{col} |".colorize(col.to_sym)
      sleep(1)
    end
    print "\n"
  end

  def require_sequence
    col_abbrvs = %w(r b g y)
    puts "enter the previous color sequence! (use keys 'r', 'b', 'g', 'y')"
    seq_guess = gets.chomp.split("")
    seq_guess.map { |char| COLORS[col_abbrvs.index(char)] }
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Great Memory! Keep it up."
  end

  def game_over_message
    puts "Game over, you lose! Your score was #{sequence_length - 1}"
  end

  def reset_game
    @seq = []
    sequence_length = 0
    game_over = false
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end

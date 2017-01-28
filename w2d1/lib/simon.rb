require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    puts "Enter in the sequence."
    player_seq = gets.chomp
    @game_over = true unless player_seq == @seq
  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
    puts "Good job! You got them right this round!"
  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1
  end
end

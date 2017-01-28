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
    take_turn until @game_over
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message
    @sequence_length += 1
    if @game_over
      game_over_message
      reset_game
    end
  end

  def show_sequence

  end

  def require_sequence
    puts "Enter in the sequence."
    player_seq = gets.chomp
    @game_over = true unless player_seq == @seq
  end

  def add_random_color
    # @sequence_length += 1 unless @sequence_length == 1
    @seq << COLORS.shuffle[0]
  end

  def round_success_message

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

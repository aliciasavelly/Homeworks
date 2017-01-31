require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    soon_cups = Array.new(14) { Array.new }

    soon_cups = soon_cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
      4.times { |i| cup << :stone }
    end
    soon_cups
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos.between?(1, 12)
    raise 'Invalid starting cup' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    start_size = cups[start_pos].length
    cups[start_pos] = []
    count = 0
    circled = false
    end_pos = start_size + start_pos
    (start_pos + 1).upto(end_pos) do |i|
      i %= 13 if i >= 13
      if (i == 6 && current_player_name == @player1) || (i == 13 && current_player_name == @player2)
        count += 1
      end

      cups[i + count] << :stone
    end

    render
    next_turn(end_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups.take(6).all? { |cup| cup.empty? } ||
    @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    # if @cups[6].count == @cups[13].count
    #   return :draw
    # end

    case @cups[6].count <=> @cups[13].count
    when -1
      @name2
    when 0
      :draw
    when 1
      @name1
    end

  end
end

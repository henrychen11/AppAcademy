class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1, @name2 = name1, name2
    @cups = Array.new(14){ Array.new([]) }
    @cups.each_with_index do |cup, index|
      cup.concat([:stone, :stone, :stone, :stone]) unless index == 6 || index == 13
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 1 || start_pos > 13
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    current_idx = start_pos
    until stones.empty?
      current_idx += 1
      current_idx = 0 if current_idx > 13
      # places stones in the correct current player's cups
      if current_idx == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif current_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[current_idx] << stones.pop
      end
    end

    render
    next_turn(current_idx)
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
    @cups[0..5].all? {|cup| cup.empty? } || @cups[6..-1].all? {|cup| cup.empty?}
  end

  def winner
    p1 = @cups[6].count
    p2 = @cups[13].count
    if p1 == p2
      :draw
    else
      p1 > p2 ? @name1 : @name2
    end
  end

end

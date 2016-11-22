class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    @name1 = name1
    @name2 = name2

    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
        4.times do
          cup << :stone
        end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Invalid starting cup" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]

    i = start_pos
    until stones.empty?
      i += 1
      i = 0 if i > 13

      if i == 6
        @cups[i] << stones.pop if current_player_name == @name1
      elsif i == 13
        @cups[i] << stones.pop if current_player_name == @name2
      else
        @cups[i] << stones.pop
      end
    end

    self.render
    self.next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      # ended on store -- get to choose where to start again
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      # ended on empty cup -- switches players' turns
      :switch
    else
      # ended on cup with stones in it -- automatically starts there
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
    @cups[0..5].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
      if @cups[6].length > @cups[13].length
        @name1
      elsif @cups[6].length < @cups[13].length
        @name2
      else
        :draw
      end
  end
end

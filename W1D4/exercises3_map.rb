class Map

  def initialize
    @map = []
  end

  def assign(key, val)
    @map.each_with_index do |pair, idx|
      if pair[0] == key
         pair[1] = val
         return [key, val]
      end
    end
    @map << [key, val]
  end

  def lookup(key)
    @map.each do |k, v|
      return v if k == key
    end
  end

  def remove(key)
    @map.each do |pair|
      @map.delete(pair) if pair[0] == key
    end
  end

end

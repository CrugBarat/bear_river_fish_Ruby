class River

  attr_accessor :name

  def initialize(name, fish_array)
    @name = name
    @fish_array = fish_array
  end

  def fish_count()
    @fish_array.size()
  end

  def lose_a_fish(fish)
    @fish_array.delete(fish)
  end

  def bear_fishing(fish, bear)
    fish = @fish_array.sample
    lose_a_fish(fish)
    bear.take_fish(fish)
  end

end

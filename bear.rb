class Bear

  attr_reader :name, :type
  attr_writer :name

  def initialize(name, type, fish_stock)
    @name = name
    @type = type
    @fish_stock = fish_stock
    @stomach = []
  end

  def stomach_count()
    @stomach.size()
  end

  def food_count()
    @fish_stock.size()
  end

  def take_fish(fish)
    @fish_stock.push(fish)
  end

  def eat_fish(fish_from_stock)
    @fish_stock.delete(fish_from_stock)
    @stomach.push(fish_from_stock)
  end

  def bear_roar()
    "GRRRRRRR"
  end

end

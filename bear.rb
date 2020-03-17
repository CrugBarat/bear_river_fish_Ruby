class Bear

  attr_reader :name, :type
  attr_writer :name

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @fish = 0
  end

  def stomach_content()
    @stomach.size()
  end

  def food_count()
    @fish
  end

  def take_fish()
    @fish += 1
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def bear_roar()
    "GRRRRRRR"
  end

end

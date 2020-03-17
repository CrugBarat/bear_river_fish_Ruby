require("minitest/autorun")
require('minitest/reporters')
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Jaws")
    @fish3 = Fish.new("Frank")

    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Clyde", @fish)

    @bear_stock =[]
  end

  def test_get_name()
    assert_equal("Clyde", @river.name())
  end

  def test_set_name()
    @river.name = "Kelvin"
    assert_equal("Kelvin", @river.name())
  end

  def test_fish_count()
    assert_equal(3, @river.fish_count())
  end

  def test_lose_a_fish()
    @river.lose_a_fish(@fish1)
    assert_equal(2, @river.fish_count())
  end

  def test_bear_fishing()
    bear = Bear.new("Baloo", "Panda", @bear_stock)
    fish = @fish.sample
    @river.bear_fishing(fish, bear)
    assert_equal(1, bear.food_count())
    assert_equal(2, @river.fish_count())
  end

end

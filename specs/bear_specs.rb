require("minitest/autorun")
require('minitest/reporters')
require_relative("../bear.rb")
require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("John Logie", :Grizzly)
  end

  def test_get_name()
    assert_equal("John Logie", @bear.name())
  end

  def test_get_type()
    assert_equal(:Grizzly, @bear.type())
  end

  def test_set_name()
    @bear.name = "Yogi"
    assert_equal("Yogi", @bear.name())
  end


  def test_stomach_empty()
    assert_equal(0, @bear.stomach_content())
  end

  def test_food_count()
    assert_equal(0, @bear.food_count())
  end

  def test_take_fish()
    @bear.take_fish()
    assert_equal(1, @bear.food_count())
  end

  def test_eat_fish()
    fish = Fish.new("Nemo")
    @bear.eat_fish(fish)
    assert_equal(1, @bear.stomach_content())
  end

  def test_bear_roar()
    assert_equal("GRRRRRRR", @bear.bear_roar())
  end

end

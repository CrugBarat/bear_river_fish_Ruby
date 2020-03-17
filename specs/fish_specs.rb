require("minitest/autorun")
require('minitest/reporters')
require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("Nemo")
  end

  def test_get_name()
    assert_equal("Nemo", @fish.name())
  end

  def test_set_name()
    @fish.name = "Flounder"
    assert_equal("Flounder", @fish.name())
  end

end

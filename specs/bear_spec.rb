require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_return_bear_name
    assert_equal("Yogi", @bear.name())
  end

  def test_return_bear_type
    assert_equal("Grizzly", @bear.type())
  end

  def test_food_count
    assert_equal(0, @bear.food_count())
  end

  # def test_takes_fish_from_river
  #
  # end

end

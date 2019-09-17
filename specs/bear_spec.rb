require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("perch")
    @fish2 = Fish.new("pirahna")
    @river = River.new("Amazon",[@fish1, @fish2])
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

  def test_takes_fish_from_river
    @bear.takes_fish(@fish1, @river)
    assert_equal(1, @bear.food_count())
    assert_equal(1, @river.number_of_fish())
  end

end

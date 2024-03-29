require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("perch")
    @fish2 = Fish.new("pirahna")
    @river = River.new("Amazon",[@fish1, @fish2])
  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_river_fish_number
    assert_equal(2, @river.fish_count())
  end

  def test_remove_fish
    @river.remove_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

end

require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("perch")
  end

  def test_fish_name
    assert_equal("perch", @fish.name())
  end


end

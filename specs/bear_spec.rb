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

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')

class EcosystemTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", ["Steve", "Barry", "Nemo"])
  end

  def test_river_name()
    assert_equal("Amazon", @river.get_name())
  end

  def test_fish_stock()
    assert_equal(3, @river.fish_stock())
  end

  # def test_lose_fish()
  #   assert_equal(2, @river.lose_fish())
  # end

end

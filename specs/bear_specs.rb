require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')

class EcosystemTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Grizzly", [])
    @river = River.new("Amazon", ["Steve", "Barry", "Nemo"])
  end

  def test_bear_eats()
    assert_equal(1, @bear.eat_fish(@river))
  end

  def test_bear_has_to_roar
    assert_equal("Roar...", @bear.roar())
  end

  def test_food_count()
    #return fish_in_river
    assert_equal(3, @bear.food_count(@river))
    assert_equal(1, @bear.eat_fish(@river))
    assert_equal(2, @bear.new_fish_stock())


    # assert_equal(1, @bear.eat_fish(@river))
    # assert_equal(2, @bear.food_count(@river))
  end

end

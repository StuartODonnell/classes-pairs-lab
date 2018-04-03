class Bear

  def initialize(name, belly)
    @name = name     # "Grizzly"
    @belly = belly   # []
    @bear_has_eaten = 0
    @river_stock = 0
  end

  def get_name(input)
    for name in @name
      if name == input
        return name
      end
    end
  end

  def eat_fish(dinner) # [["Amazon"], ["Steve", "Barry", "Nemo"]]
    fish_returned = dinner.lose_fish()
    @belly.push(fish_returned)
    return @belly.count()
  end

  def roar()
    return "Roar..."
  end

  def food_count(river) # "Amazon", ["Steve", "Barry", "Nemo"]
    fish_in_river = river.fish_stock()
    @river_stock += fish_in_river
    return fish_in_river
  end

  def new_fish_stock()
    total = @river_stock - @belly.count()
    return total
  end
end

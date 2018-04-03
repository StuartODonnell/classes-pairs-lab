class River

  def initialize(name, fish)
    @name = name
    @fish = fish #["Steve", "Barry", "Nemo"]
    @river_stock = @fish.count()
  end

  def get_name()
    return @name
  end

  def fish_stock()
    return @river_stock
  end

  def lose_fish()
    current_fish = @fish[0]
    @fish.delete_at(0)
    return current_fish
  end



end

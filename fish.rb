class Fish

  def initialize(name)
    @name = name 
  end

  def get_name(input)
    for name in @name
      if name == input
        return name
      end
    end
  end

end

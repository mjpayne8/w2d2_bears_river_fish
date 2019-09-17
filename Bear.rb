class Bear

  attr_reader(:name, :type)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.length()
  end

  def takes_fish(fish, river)
    @stomach.push(fish)
    river.remove_fish(fish)
    p river.number_of_fish
  end

  def roar()
    return "Raawwwr"
  end

end

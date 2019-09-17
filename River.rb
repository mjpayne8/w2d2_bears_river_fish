class River

attr_reader(:name)

def initialize(name, fish)
  @name = name
  @fish = fish
end

def number_of_fish()
  return @fish.length()
end

end

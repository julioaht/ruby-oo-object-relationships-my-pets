class Owner

    attr_reader :name, :species

  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    return "I am a #{self.species}."
  end

  def self.all
    @@all
  end

def self.count
  return self.all.count
end

def self.reset_all
  self.all.clear

end

def cats
  Cat.all.select do |cat|
    cat.owner == self
  end
end

def dogs
  Dog.all.select do |dog|
    dog.owner == self
  end
end

def buy_cat(cats_name)
  Cat.new(cats_name, self)
end

def buy_dog(dogs_name)
  Dog.new(dogs_name, self)
end

def walk_dogs
  Dog.all.select do |dog|
    if dog.owner == self
      dog.mood = "happy"
    end
  end
end
#Owner1, owner2, 
#owner1.walk_dogs
#owner2.walk_dogs
#dog 1's owner was jeff
#dogs2 owner was mike

  def feed_cats
    Cat.all.select do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end

  def sell_pets
    all_pets = Dog.all + Cat.all

    all_pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end


  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end #end of owner class

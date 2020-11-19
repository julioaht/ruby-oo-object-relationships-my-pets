require 'pry'


class Owner 

  attr_accessor
  attr_reader :name, :species  
  @@all = []  
  def initialize(name, species = "human")
    @name = name 
    @species = species 
    @@all << self 
  end 

  def say_species
    return "I am a human." 
  end 

  def self.all
    @@all 
  end 

  def self.count 
    # @@all.count # check out what @@all is
    self.all.count
  end 

  def self.reset_all
    self.all.clear 
  end 

  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end

    # Cat.all.select { |cat| cat.owner == self}
  end 

  def dogs 
    Dog.all.select { |dog| dog.owner == self}
  end 

  def buy_cat(cats_name)

    Cat.new(cats_name, self)

  #   When an owner buys a new pet, the `buy_cat/buy_dog` methods **take in an
  # argument of a _name_.** You must take that name and do the following:

  # - _Make a new instance of the appropriate pet, initializing it with that name
  #   and the owner who is purchasing it_.

  end 

  def buy_dog(dogs_name)
      Dog.new(dogs_name, self)
  end 
  
  
  def walk_dogs 
    Dog.all.select { |dog| dog.owner == self}
    # binding.pry
      dog.mood = "happy"
    #binding.pry

  end 

  # def walk_dogs
  #   Dog.all.select do |dog|
  #     dog.owner == self
  #     dog.mood = "happy"
  #   end
  # end
  
  
    # jj = Owner.new('jj')
  # binding.pry

end 


























# class Owner

#     attr_reader :name, :species

#   @@all = []
#   def initialize(name, species = "human")
#     @name = name
#     @species = species
#     @@all << self
#   end

#   def say_species
#     return "I am a #{self.species}."
#   end

#   def self.all
#     @@all
#   end

# def self.count
#   return self.all.count
# end

# def self.reset_all
#   self.all.clear

# end

# def cats
#   Cat.all.select do |cat|
#     cat.owner == self
#   end
# end

# def dogs
#   Dog.all.select do |dog|
#     dog.owner == self
#   end
# end

# def buy_cat(cats_name)
#   Cat.new(cats_name, self)
# end

# def buy_dog(dogs_name)
#   Dog.new(dogs_name, self)
# end

# def walk_dogs
#   Dog.all.select do |dog|
#     if dog.owner == self
#       dog.mood = "happy"
#     end
#   end
# end
# #Owner1, owner2, 
# #owner1.walk_dogs
# #owner2.walk_dogs
# #dog 1's owner was jeff
# #dogs2 owner was mike

#   def feed_cats
#     Cat.all.select do |cat|
#       if cat.owner == self
#         cat.mood = "happy"
#       end
#     end
#   end

#   def sell_pets
#     all_pets = Dog.all + Cat.all

#     all_pets.each do |pet|
#       pet.mood = "nervous"
#       pet.owner = nil
#     end
#   end


#   def list_pets
#     return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
#   end


# end #end of owner class



require 'pry'

class Dog
  
  attr_accessor :owner, :mood  
  attr_reader :name
  @@all = [] 
  def initialize(name, owner, mood= "nervous")
    @name = name
    @owner = owner 
    @mood = mood 
    @@all << self 
  end 

 

  def self.all
    @@all 
  end 

end 














# class Dog
  
#     attr_reader :name
#     attr_accessor :owner, :mood

#     @@all = []

#     def initialize(name, owner, mood = "nervous")
#       @name = name
#       @owner = owner
#       @mood = mood
#       @@all << self
#     end

#     def self.all
#       @@all
#     end

#     #d1, d2, d3
#     #d2.owner
    
    

  


# end
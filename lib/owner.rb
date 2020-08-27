require 'pry'

class Owner
  attr_reader :name, :species

  @@now_all =[]
  #@@owner_count = -1

  def initialize (name, species="human")
    @name = name
    @species = species
    @@now_all << self
    #@@owner_count  += 1
  end

  def say_species
   p "I am a #{species}."
  end

  def self.all
     return @@now_all
  end
  
  def self.count
    @@now_all.length
  end
 
  def self.reset_all
    self.all.clear
    # binding.pry 
  end

end

# john = Owner.new("John")

class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    @cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        @cats << cat
      end
    end
    @cats
  end
  
  def dogs 
    @dogs = []
    Dog.all.each do |dog|
      if dog.owner == self 
        @dogs << dog 
      end
    end
    @dogs
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats 
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
end
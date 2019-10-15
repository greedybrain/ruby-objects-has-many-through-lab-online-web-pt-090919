class Genre 
  
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs 
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists 
    songs.collect{|song| song.artist }
    # binding.pry
  end
  
end





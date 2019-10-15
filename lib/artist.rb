# artist has many songs 
# song belongs to an artist

# song belongs to a genre
# genre has many songs

# artist has many genres through songs
class Artist 
  
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
      song.artist == self
    end
  end
  
  def new_song(name, genre) 
    Song.new(name, self, genre)
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end

  
end








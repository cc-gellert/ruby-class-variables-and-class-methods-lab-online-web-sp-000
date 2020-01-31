class Song 
  attr_accessor :name, :artist, :genre 
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@artists << artist 
    @genre = genre 
    @@genres << genre 
    @@count += 1 
  end 
  @@count = 0 
  def self.count 
    @@count
  end 
  @@genres = [] 
  def self.genres
    uniqueG = [] 
    @@genres.each do |song|
      if !uniqueG.include?(song)
        uniqueG << song 
      end 
    end 
    uniqueG 
  end 
  @@artists = [] 
  def self.artists 
    @@artists 
  end
  def self.genre_count
    
  end 
  def self.artist_count
  end 
end 
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
    @@genres.each do |type|
      if !uniqueG.include?(type)
        uniqueG << type  
      end 
    end 
    uniqueG 
  end 
  
  @@artists = [] 
  
  def self.artists 
    uniqueA = [] 
    @@artists.each do |singer|
      if !uniqueA.include?(singer)
        uniqueA << singer 
      end 
    end 
    uniqueA 
  end
  def self.genre_count
    histo = {} 
      @@genres.map do |genre| 
      histo[type]||= [] 
      histo[type] += 1 
    end 
  end 
  def self.artist_count
  end 
end 
require 'pry'
class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |self.genres, name|
    genre_hash[self.genres] = name.length
    end
    genre_hash
  end 


  def self.artist_count
    @@artists.map do |artists, name|
    {"artists" => "name.length"}
    end
    
  end
end
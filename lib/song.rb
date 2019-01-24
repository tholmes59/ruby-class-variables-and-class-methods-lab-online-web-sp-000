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
    @@genres.each do |genres, name|
    genre_hash[genres] = name
    end
    genre_hash
  end 


  def self.artist_count
    artist_hash = {}
    @@artists.each do |artists, name|
    artist_hash[artists] = name
    end
    artist_hash
  end 
  
end
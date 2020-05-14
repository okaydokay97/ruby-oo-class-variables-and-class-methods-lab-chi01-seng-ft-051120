require 'pry'
class Song 
  attr_accessor :artist, :genre, :name
  attr_reader :genre_count, :artist_count
  @@count = 0
  @@artists = []
  @@genres = []
  @@all_genres_count = {}
  @@all_artists_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
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
    self.genres.each do |genre_name|
     count = @@genres.find_all{|genre| genre == genre_name}.length
      @@all_genres_count["#{genre_name}"] = nil
      @@all_genres_count["#{genre_name}"] = count
    end
    @@all_genres_count
  end
  
  def self.artist_count
    self.artists.each do |artist_name|
     count = @@artists.find_all{|artist| artist == artist_name}.length
      @@all_artists_count["#{artist_name}"] = nil
      @@all_artists_count["#{artist_name}"] = count
    end
    @@all_artists_count
  end
  
end
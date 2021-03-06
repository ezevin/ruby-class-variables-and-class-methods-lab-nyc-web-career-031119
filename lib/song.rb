class Song

attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if genres.keys.include?(genre)
        genres[genre]+=1
      else
        genres[genre] = 1
      end
    end
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if artists.keys.include?(artist)
        artists[artist]+=1
      else
        artists[artist] = 1
      end
    end
    artists
  end
end

require 'pry'

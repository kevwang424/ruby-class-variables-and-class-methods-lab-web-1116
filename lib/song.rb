class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    count_hash = Hash.new(0)
    @@genres.each {|genre| count_hash[genre] += 1}
    count_hash
  end

  def self.artist_count
    count_hash = Hash.new(0)
    @@artists.each {|artist| count_hash[artist] += 1}
    count_hash
  end
  
end

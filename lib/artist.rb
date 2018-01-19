class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def self.find_by_name(name)
    self.all.detect { |x| x.name = name } 
  end

  def self.create_by_name(name)
    self.new(name) << self.all 
    self.new(name)
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end

artist_1 = Artist.find_or_create_by_name("Michael Jackson")
artist_2 = Artist.find_or_create_by_name("Michael Jackson")
puts  artist_1 
puts artist_2

# learn spec/artist_spec.rb --fail-fast
# ruby lib/artist.rb








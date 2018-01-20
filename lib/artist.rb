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
    artist = self.new(name) 
    self.all << artist 
    artist
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
  
  def print_songs
    @songs.map { |x| x.name }.join(/n)
  end

end



# learn spec/artist_spec.rb --fail-fast
# ruby lib/artist.rb








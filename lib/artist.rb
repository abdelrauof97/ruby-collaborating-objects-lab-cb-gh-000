class Artist

  attr_accessor :name, :songs

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
    @songs.each { |x| puts x.name }
  end

end

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
  end

  def save
      @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end

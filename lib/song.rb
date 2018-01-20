class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    file = filename.split(" - ")
    song = self.new(file[1])
    song.artist = file[1]
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
end
      




# learn spec/song_spec.rb --fail-fast





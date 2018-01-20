class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    
    file = filename.split(" - ")
    song = self.new(file[0])
    song.artist.name = file[1]
    song
  end
  
end
      

# learn spec/song_spec.rb --fail-fast

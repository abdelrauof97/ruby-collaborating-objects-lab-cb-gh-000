class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    song = self.new(file[0])
    file = filename.split(" - ")
    song.artist = file[1]
  end
  
end
      

# learn spec/song_spec.rb --fail-fast

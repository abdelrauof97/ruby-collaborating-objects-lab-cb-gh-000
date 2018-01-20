class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    new_file = filename.split(" - ")
    song = self.new
    song.name = new_file[2]
    song.artist = new_file[1]
  end
  
end


# learn spec/song_spec.rb --fail-fast

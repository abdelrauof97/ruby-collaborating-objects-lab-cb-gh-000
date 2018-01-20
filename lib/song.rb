class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    new_file = filename.split(" - ")
    self.name = new_file[]
    self.artist = new_file[]
  end
  
end


# learn spec/song_spec.rb --fail-fast

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    new_file = filename.split(" - ")
    @name = new_file[2]
    @artist = new_file[1]
  end
  
end


# learn spec/song_spec.rb --fail-fast

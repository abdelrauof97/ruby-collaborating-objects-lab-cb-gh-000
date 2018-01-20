class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)

  end
  
end
      new_instance = Song.new_by_filename(file_name)
      expect(new_instance.name).to eq('Black or White')
      expect(new_instance.artist.name).to eq('Michael Jackson')

# learn spec/song_spec.rb --fail-fast

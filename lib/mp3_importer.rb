
class MP3Importer
  attr_accessor :path

  def initialize(music_path)
    @path = music_path
  end

  def files
      @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
  end

  def import
      files.each{|f| Song.new_by_filename(f)}
  end
end






# learn spec/mp3_importer_spec.rb --fail-fast
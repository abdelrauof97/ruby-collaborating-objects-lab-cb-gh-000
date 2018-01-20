
class MP3Importer 
  
  attr_accessor :files, :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    @files ||= Dir.glob("#{@path}/*.mp3").collect{ |x| x.gsub("#{path}/", "")}
  end
  
  def import
    files.each{|x| Song.new_by_filename(x)}
  end
  
  
end



# learn spec/mp3_importer_spec.rb --fail-fast

class MP3Importer 
  
  attr_accessor :files, :import, :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    @files = Dir.glob("#{@path}/*.mp3").collect{ |x| x.gsup{#{path}/, ""}
  end
  
  
  
end



# learn spec/mp3_importer_spec.rb --fail-fast
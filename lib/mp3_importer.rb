
class MP3Importer 
  
  attr_accessor :files, :import, :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    files = Dir.glob("#{@path}").select { |x| x.include?("mp3")}
  end
  
end



# learn spec/mp3_importer_spec.rb --fail-fast
require 'pry'
class MP3Importer
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
  end  
  
  
  def self.all
    @@all
  end
  
  def files
  loaded_files =  Dir.glob("#{path}/*.mp3")
  loaded_files.collect do |file|
    file.gsub("#{path}/", "")
  end
  end
  
  def import
    self.files.each do |load|
      Song.new_by_filename(load)
    end  
    
  end  
end  
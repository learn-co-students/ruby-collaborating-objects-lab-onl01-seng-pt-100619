require "pry"
class Song 

  attr_accessor :name, :artist
  
  @@all = []  
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
  
  def self.all 
    @@all
  end 
  
  def self.new_by_filename(filename)
    #binding.pry
    split_files = filename.split(" - ")
    song_name = split_files[1]
    new_song = self.new(song_name)
  end 
end 
    
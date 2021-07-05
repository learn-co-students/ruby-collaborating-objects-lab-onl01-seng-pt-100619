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
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    #this is calling the #artist_name=
    #it is a writer method that assigns that variable to artist
    #you are not just assigning the string to artist, because you want the artist attribute to be an artist instance instead
    song.artist_name = artist
    song
  end
  
  def self.new_name 
    new_artist = artist.new
  end 
end 
    
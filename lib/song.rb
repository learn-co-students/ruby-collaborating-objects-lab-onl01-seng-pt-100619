class Song 
  
  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
     @@all 
  end 
  
  def self.new_by_filename(filename)
    split_files = filename.split("-")
    song_name = split_files[1]
    new_song = song.new(song_name) 
  end 
  
  def artist_name=(filename)
    split_files = filename.split("-")
    artist_name = split_files[0]
    artist_name = Artist.new(artist_name)
   end 
   
   
  
end 
    
    
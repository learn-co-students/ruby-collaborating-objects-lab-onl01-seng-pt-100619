class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist == self 
  end 
  
  def songs 
    Song.all.select do |song| 
      song.artist == self
    end 
  end 
  
  def find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end 
  
  def self.find_or_create_by_name(name) 
    if self.find_by_name(name)
      return self.find_by_name(name.uniq)
    else 
      return self.new(name)
    end 
  end 
  
  def print_songs 
    self.songs.each do |song|
      puts self.song.name
    end 
  end 

end 
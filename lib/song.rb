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
  
<<<<<<< HEAD
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
=======
  def self.new_by_filename(filename)
    #binding.pry
    split_files = filename.split(" - ")
    song_name = split_files[1]
    new_song =self.find_or_create_by_name(name)
    new_artist = artist.new.filename[0]
  end
>>>>>>> 8784c0ca6a5b1b02f960b14b9280f15f0cd85697
end 
    
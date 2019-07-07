class Song
  attr_accessor :name, :artist
  
  def initialize(song_name)
    @name = song_name
  end
<<<<<<< HEAD
  
  def self.new_by_filename(file_name)
    array = file_name.split(' - ')
    
    artist_name = array[0]
    song_name = array[1]
    
    artist = Artist.find_or_create_by_name(artist_name)
    
    song = Song.new(song_name)
    
    artist.add_song(song)
    
    song.artist = artist
    
    song
  end
=======
>>>>>>> d7f1debea9ce606a4e38d873b47866d24d04e3a4
end
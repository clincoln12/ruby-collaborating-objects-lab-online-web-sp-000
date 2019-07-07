class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
    self
  end
  
  def self.find_or_create_by_name(artist_name)
<<<<<<< HEAD
    searched_artist = @@all.select { |a| a.name == artist_name }.first
    
    if searched_artist.nil?
      created_artist = Artist.new(artist_name)
      return created_artist.save
=======
    searched_artist = @@all.select { |a| a == artist_name }.first
    
    if searched_artist.nil?
      created_artist = Artist.new(artist_name)
      created_artist.save
>>>>>>> d7f1debea9ce606a4e38d873b47866d24d04e3a4
    else
      searched_artist
    end
  end
  
  def print_songs
    @songs.each { |s| puts s.name }
  end
end
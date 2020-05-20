require "pry"
class Artist
  attr_accessor :name, :song, :artist, :new_song

 @@song_count = 0
 @all = []
  def initialize(name)
    @name = name
   end

 def songs
  Song.all.select { |song| song.artist == self }
 #since song belongs to artist, we can call song.artist and it shoudl return the instnace of the artist that it's associated with
 end

 def add_song_by_name(name)
   new_song = Song.new(name)
   self.songs << new_song
   new_song.artist = self
   @@song_count += 1
 end


 def self.song_count
  Song.all.count
 end

 def add_song(song)
 @songs << song
 song.artist = self
end
def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end
end

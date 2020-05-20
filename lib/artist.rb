require 'pry'

class Artist
  attr_accessor :name

  @@song_count = 3

  def initialize(name)
    @name = name
    @songs = "Hello"
  end

  def self.song_count
 Song.all.count
end


  def songs
    @songs
    binding.pry
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
end

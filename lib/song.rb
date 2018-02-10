require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    if (self.artist.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name=(filename.split(" - ")[0])
    song
  end

end

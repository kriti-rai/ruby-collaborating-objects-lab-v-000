require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(song)
    song.artist = self unless song.artist
      @songs << song unless @songs.include?(song) #checks for duplicates
  end

  def self.all
    @@all
  end

  def save
    @@all << self unless @@all.include?(self)
  end

  def self.find_or_create_by_name(artist_name)
    artist = self.new(name)
    # if artist.name==artist_name
    #   artist
    # else
    #   self.new(artist_name)
    # end
    self.new(artist_name) unless name==artist_name
      artist

  end


  def print_songs
    self.songs.each {|song| puts song.name}
    # binding.pry
  end


end

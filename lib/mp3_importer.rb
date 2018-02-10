require 'pry'

class MP3Importer
  attr_accessor :path

  # @songs = []

  def initialize(path)
    @path = path
    @songs = []
  end

  def files
    Dir.entries(@path).select {|filename| filename.include?(".mp3")}
  end

  def import
    self.files.collect {|filename| @songs << Song.new_by_filename(filename)}
    # binding.pry
  end

end

require "pry"

class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) {Dir.glob("*.mp3")}
  end

  def import
    files.each {|filename|
      song = Song.new_by_filename(filename)}
  end

end

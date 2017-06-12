class Artist
  attr_reader(:name, :songs)
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless self.find_by_name(name)
    self.find_by_name(name)
  end

  def save
    self.class.all << self
  end

  def name=(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end

end

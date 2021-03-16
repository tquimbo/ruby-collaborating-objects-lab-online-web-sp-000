class Song

  # other methods
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @artist = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def artist_name
  self.artist.name  if artist
  end

  def self.new_by_filename
    puts song.artist
  end

  # def artist_name
  #   self.artist.name  if artist
  #   end
  # end

end

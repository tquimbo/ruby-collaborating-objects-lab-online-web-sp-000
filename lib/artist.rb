require 'pry'

class Artist

@@all = []

attr_accessor :name, :song

def initialize(name)
@name = name
save
end

def save
  @@all << self
end

def self.all
  return @@all
end

def add_song_by_name(name)
   song = Song.new(name)
   add_song(song)
end

def add_song(song)
 song.artist = self
end

def songs
 Song.all.select {|song| song.artist == self}
end

#   always returns an Artist instance (FAILED - 1) you can do with if/else statement

#   finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 2)
#   Creates new instance of Artist if none exist second part of if else statement
def self.find_or_create_by_name(name)
       Artist.all.each do |check|
           if check.name == name
               return check
           else
               return Artist.new(name)
           end
       end
   end

def print_songs
puts self.song.all.name
end

end

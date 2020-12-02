require_relative './artist.rb'

class Song
    attr_accessor :name, :genre
    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist=(artist)
        self.genre=(genre)
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        @artist
    end

    def genre=(genre)
        @genre = genre
        # Genre.all.songs << self
        genre.artist.song = self
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(name)
        song = Song.new(name)
        song.save
        self
    end

    

end
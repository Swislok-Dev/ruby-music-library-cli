
class Artist
    attr_accessor :name, :song, :genre
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.collect { |song| song if song.artist == self }
    end

    def add_song(song)
        @songs << song
        song.artist = self
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
        artist = Artist.new(name)
        artist.save
        artist
    end

end
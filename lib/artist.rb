
class Artist
    attr_accessor :name, :song, :genre
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self unless song.artist
        @songs << song unless self.songs.include?(song)
        # if song.artist != "" && song.artist != self
        #     song.artist = self
        # end
        # @songs << song if !@songs.include?(song)
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
        artist = Artist.new(name)
        artist.save
        artist
    end

end
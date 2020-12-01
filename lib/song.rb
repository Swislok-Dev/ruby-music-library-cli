

class Song
    attr_accessor :name
    attr_reader :artist, :genre

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist = artist if artist
        self.genre = genre if genre
    end

    def genre=(genre)
        @genre = genre
        genre.add_song(self)
    end
 
    def artist=(artist)
        @artist = artist
        artist.add_song(self)
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

    def self.find_by_name(name)
        @@all.find { |name| self if song.name == name}
    end

end
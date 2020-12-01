
class Genre
    extend Concerns::Findable
    attr_accessor :name
    attr_reader :songs, :artist
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def artists
        songs.map(&:artist).uniq
    end

    def songs
        @songs
    end

    def add_song(song)
        song.genre = self unless song.genre
        self.songs << song unless self.songs.include?(song)
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
        genre = Genre.new(name)
        genre.save
        genre
    end

end
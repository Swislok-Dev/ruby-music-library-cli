

class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name, artist = nil)
        @name = name
        
        @artist = artist
    end
 
    def artist=(artist)
        @artist = artist
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
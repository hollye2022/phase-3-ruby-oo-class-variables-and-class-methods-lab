class Song

    @@count = 0
    @@genres = []
    @@artists =[]

    attr_accessor :name, :artist, :genre

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << self.genre
        @@artists << self.artist

    end

    def self.count
        @@count

    end

    def self.genres
       # no duplicate
        @@genres.uniq

    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #return a hash
        @@genres.tally
        #@@genres.group_by
    end

    def self.artist_count
        #return a hash
        @@artists.tally

    end
end
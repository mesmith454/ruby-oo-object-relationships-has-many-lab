class Artist
    attr_accessor :name

    def initialize(name)
        @name = name #initialize artist with name
    end

    def songs #pull info from Song instances, select and returns songs by current artist
        Song.all.select {|song| song.artist == self}
    end
    
    def add_song(song) #add song, associated with artist
        song.artist = self
    end

    def add_song_by_name(name) #initializes new song via Song class
        song = Song.new(name)
        self.add_song(song) #adds song to artist's collection
    end

    def self.song_count
        Song.all.count #counts up all songs by current artist
    end


end
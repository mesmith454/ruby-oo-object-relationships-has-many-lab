class Song
    attr_accessor :name, :artist
    @@all = []
    
    def initialize(name)
        @name = name #initialize w/ name and shovel to @@all
        @@all << self
    end

    def self.all
        @@all #return @@all
    end

    def artist_name
        if artist #check and return artist name if one is available
            artist.name 
    end
end




end
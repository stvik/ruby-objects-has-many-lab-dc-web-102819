class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        artists_songs = Song.all.find_all {|song| song.artist == self}
        #artists_songs.collect {|song| song }

    end

    def add_song(title)
        title.artist = self
       # new_song.artist = self
    end

    def add_song_by_name(song_name)
       new_song = Song.new(song_name)
       new_song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end
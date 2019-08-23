class SongSorter
    initialize(songs, value)
        @songs = songs
        @value = value
    end

    def sort
        if at @value == "random"
            @sorted_songs = @songs.to_a.shuffle
        elsif at @value == "reverse"
            @sorted_songs = @songs.to_a.reverse
        else
            @sorted_songs = @songs
        end
    end
end
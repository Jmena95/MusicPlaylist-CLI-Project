
class Playlist
  def initialize
    @songs = []
  end

  def add_song(song)
    @songs << song
    puts "'#{song.title}' by #{song.artist} has been added to your playlist."
  end

  def remove_song(title)
    song = @songs.find { |s| s.title.downcase == title.downcase }
    if song
      @songs.delete(song)
      puts "'#{song.title}' by #{song.artist} has been removed from your playlist."
    else
      puts "Song not found!"
    end
  end

  def display_playlist
    if @songs.empty?
      puts "Your playlist is empty."
    else
      puts "Your Playlist:"
      @songs.each { |song| puts "- #{song.title} by #{song.artist}" }
    end
  end
end

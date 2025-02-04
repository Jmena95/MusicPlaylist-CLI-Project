require_relative 'song'
require_relative 'playlist'

def start
  playlist = Playlist.new

  puts "Welcome to the Playlist Manager!"
  
  loop do
    puts "\nPlease choose an option:"
    puts "1. Add a song to the playlist"
    puts "2. Remove a song from the playlist"
    puts "3. View the playlist"
    puts "4. Exit"

    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter the song title: "
      song_title = gets.chomp
      print "Enter the artist name: "
      artist_name = gets.chomp
      song = Song.new(song_title, artist_name)
      playlist.add_song(song)
    when 2
      print "Enter the title of the song to remove: "
      song_title = gets.chomp
      playlist.remove_song(song_title)
    when 3
      playlist.display_playlist
    when 4
      puts "Goodbye!"
      break
    else
      puts "Invalid option, please try again."
    end
  end
end

start

require_relative 'song'

class Playlist
  attr_accessor :songs

  def initialize
    @songs = []
    puts "Welcome to My Playlist"
  end

  def run
    loop do
      puts 'Please Choose an Option'
      puts '1. Add a song to the playlist'
      puts '2. Removes a song from the plalylist'
      puts '3. View playlist'
      puts '4. Exit'
      
      choice = gets.chomp.to_i

      case choice
      when 1
        add_song
      when 2 
        remove_song
      when 3
        view
      when 4
        puts 'Goodbye!'
      end
    end
 end

 def add_song (song)
@songs << song
puts "#{song.get

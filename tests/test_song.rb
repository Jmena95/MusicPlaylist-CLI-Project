require 'minitest/autorun'
require './song'


class TestSong < Minitest::Test
  def setup
    @song = Song.new("Take Your Mask Off", "Tyler,The Creator")
  end

  def test_song_title
    assert_equal "Take Your Mask Off", @song.title
  end

  def test_song_artist
    assert_equal "Tyler,The Creator", @song.artist
  end
end

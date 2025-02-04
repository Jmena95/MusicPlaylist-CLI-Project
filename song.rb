class song
  attr_accessor :title, :artist

  def initialize(title,artist)
    @title = title
    @artist = artist
  end

  def to_s
    "#{title} by #{artist}"
  end
end


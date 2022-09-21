require_relative 'classes/book'

class App
  attr_accessor :books, :games, :music_albums

  def initialize
    @books = []
    @games = []
    @music_albums = []
  end
end

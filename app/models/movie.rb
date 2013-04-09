class Movie
  include Mongoid::Document

  field :movies_io, type: Mashed
  field :selected, type: Boolean, default: false
  field :votes, type: Integer, default: 0

  def search(query)
    self.movies_io = MoviesIo.new(query).movie
  end

  def backdrop
    movies_io.backdrop.urls.original
  end

  delegate :title, to: :movies_io
end
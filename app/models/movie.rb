class Movie
  include Mongoid::Document

  field :movies_io, type: Mashed
  field :selected, type: Boolean, default: false
  field :votes, type: Integer, default: 0
  has_many :votes

  def title=(title)
    self.movies_io = MoviesIo.new(title).movie
  end

  def backdrop
    movies_io.backdrop.urls.original
  end

  delegate :title, to: :movies_io
end
class Movie
  include Mongoid::Document

  field :movies_io, type: Mashed
  field :selected, type: Boolean, default: false

  def initialize(query)
    super(movies_io: MoviesIo.new(query).movie)
  end

  def backdrop
    movies_io.backdrop.urls.original
  end

  delegate :title, to: :movies_io
end
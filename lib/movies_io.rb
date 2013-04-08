require 'httparty'

class MoviesIo
  attr_reader :movie

  def initialize(query)
    @response = HTTParty.get("http://api.movies.io/movies/search?q=#{CGI::escape(query)}")
    @movie = JSON.parse(@response.body)['movies'].first
  end
end
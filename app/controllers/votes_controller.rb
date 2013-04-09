class VotesController < ApplicationController
  respond_to :json

  def create
    movie = Movie.find(params[:movie_id])

    respond_with @movie.votes.create
  end
end

class VotesController < ApplicationController
  respond_to :json

  def create
    movie = Movie.find(params[:vote][:movie_id])
    vote = movie.votes.create
    movie.reload

    respond_with vote
  end
end

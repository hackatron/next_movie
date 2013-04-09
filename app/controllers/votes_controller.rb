class VotesController < ApplicationController
  respond_to :json

  def create
    @movie = Movie.find(params[:movie_id])
    @vote = @movie.votes.build()
    respond_with @vote.create()
  end

end

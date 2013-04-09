class MoviesController < ApplicationController
  respond_to :json

  def show
    respond_with Movie.find(params[:id])
  end

  def index
   respond_with Movie.all
  end

  def create
    respond_with Movie.create(movie_params)
  end

  def update
    respond_with Movie.update(movie_params)
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end
end

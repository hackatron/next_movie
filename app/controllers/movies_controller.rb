class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.json { render json: @movie }
    end
  end

  def index
    @movies = Movie.all
    
    respond_to do |format|
      format.json { render json: @movies }
    end
  end
end

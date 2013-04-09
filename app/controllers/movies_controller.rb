class MoviesController < ApplicationController
  respond_to :json

  def show
    respond_with Movie.find(params[:id])
  end

  def index
   respond_with Movie.all
  end

  def create
    respond_with Movie.create(params[:movie])
  end

  def update
    respond_with Movie.update(params[:movie])
  end
end

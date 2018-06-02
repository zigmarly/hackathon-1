class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update]

  def index
    @movies = current_user.movies
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = current_user.movies.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def udpate
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
  end

  private 
    def set_movie
      @movie = current_user.movies.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:name, :balance)
    end
end

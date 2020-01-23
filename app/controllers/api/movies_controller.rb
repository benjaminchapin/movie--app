class Api::MoviesController < ApplicationController

  def show
    @movie = Movie.find_by(id: params["id"])
    render "show.json.jb"
  end

  def index
    @movies = Movie.all
    render "index2.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
    )
    @movie.save
    render "show.json.jb"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title,
    @movie.plot = params[:plot] || @movie.plot,
    @movie.year = params[:year] || @movie.year,

    @movie.save
    render "index2.json.jb"
  end

  def destroy
    @movie = Movie.find_by(id: params["id"])
    @movie.destroy
    render json: {message: "Movie successfully removed"}
  end
end

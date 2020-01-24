class Api::MoviesController < ApplicationController

  def show
    @movie = Movie.find_by(id: params["id"])
    render 'show.json.jb'
  end

  def index
    @movies = Movie.all
    render 'index2.json.jb'
  end

  def create
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      rating: params[:rating]
    )
    if @movie.save
      render 'show.json.jb'
    else
      render json: {errors: movie.errors.full_messages}, status: :unproccessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title,
    @movie.plot = params[:plot] || @movie.plot,
    @movie.year = params[:year] || @movie.year,
    @movie.director = params[:director] || @movie.director,
    @movie.english = params[:english] || @movie.english,
    @movie.rating = params[:rating] || @movie.rating
  
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors: movie.errors.full_messages}, status: :unproccessable_entity
    end
  end

  def destroy
    @movie = Movie.find_by(id: params["id"])
    @movie.destroy
    render json: {message: "Movie successfully removed"}
  end
end

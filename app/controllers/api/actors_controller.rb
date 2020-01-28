class Api::ActorsController < ApplicationController

  def show
    @actor = Actor.find_by(id: params["id"])
    render "show.json.jb"
  end

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender],
      movie_id: params[:movie_id]
    )
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name,
    @actor.last_name = params[:last_name] || @actor.last_name,
    @actor.known_for = params[:known_for] || @actor.known_for,
    @actor.age = params[:age] || @actor.age,
    @actor.gender = params[:gender] || @actor.gender,
    @actor.movie_id = params[:movie_id] || @actor.movie_id

    if @actor.save
      render "show.json.jb"
    else
      render json: {errors: movie.errors.full_messages}, status: :unproccessable_entity
    end
  end

  def destroy
    @actor = Actor.find_by(id: params["id"])
    @actor.destroy
    render json: {message: "Actor successfully removed"}
  end

end
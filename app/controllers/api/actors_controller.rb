class Api::ActorsController < ApplicationController

  def actor_method
    @actor = Actor.first
    render "actor.json.jb"
  end

  def show
    @actor = Actor.find_by(id: params["id"])
    render "show.json.jb"
  end

  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def query_action
    @actor = Actor.find_by(id:params["id"])
    render "show.json.jb"
  end

  def segment
    @actor = Actor.find_by(name:params["fid"])
    render "show.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for
      ],
    )
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name,
    @actor.last_name = params[:last_name] || @actor.last_name,
    @actor.known_for = params[:known_for] || @actor.known_for,

    @actor.save
    render "index.json.jb"
  end

  def destroy
    @actor = actor.find_by(id: params["id"])
    @actor.destroy
    render json: {message: "Actor successfully removed"}
  end

end
class ActorsController < ApplicationController

  def show
    @actors = Actor.find_by(id: "2")
    render "index.json.jb"
  end

end

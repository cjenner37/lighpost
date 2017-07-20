class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@post = Post.new
  	@workout = Workout.new
  end
end

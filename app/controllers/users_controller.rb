class UsersController < ApplicationController
  def index
  end

  def show
  	@user = current_user
  	@post = Post.new
  end
end

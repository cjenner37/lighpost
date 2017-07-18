class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.create(post_params)
  end

  def new
    @post = Post.new
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end

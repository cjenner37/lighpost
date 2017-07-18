class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    respond_to do |format|
      if @post.save
        format.js   
      end     
    end
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

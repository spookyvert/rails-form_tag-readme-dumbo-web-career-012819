class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

    @post = Post.new

  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path

  end


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def post_params
    params.require(:post).permit(:title, :description)
  end
end

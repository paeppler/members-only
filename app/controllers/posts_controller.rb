class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end


  def create
    post = Post.new(post_params.merge(user: current_user))

    if post.save
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :title)
  end
end

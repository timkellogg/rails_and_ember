class PostsController < ApplicationController
  def index
    render :json => Post.all
  end

  def show
    render :json => Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render :json => @post, :status => :created, :location => @post
    else
      render :json => @post.errors, :status => :unprocessable_entity
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render :json => @post
    else
      render :json => @post.errors, :status => :unprocessable_entity
    end
  end

  private

    def post_params
      params.require(:post).permit(:body, :title)
    end
end

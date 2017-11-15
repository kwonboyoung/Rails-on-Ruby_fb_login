class PostsController < ApplicationController
  before_action(:find_post, only:[:show, :edit, :update, :destroy])
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      title: params[:title],
      content: params[:content]
    )
    
    redirect_to :root
    
  end

  def show

  end

  def edit

  end

  def update
    
    @post.update(
        title: params[:title],
        content: params[:content]
    )
    
    redirect_to post_path(@post.id)
    
  end

  def destroy
    @post.destroy
    
    redirect_to :root
  end
  
  private
  def find_post
    @post = Post.find(params[:id])
  end
end

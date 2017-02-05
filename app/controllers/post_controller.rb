class PostController < ApplicationController
  def index
    @posts=Post.all
  end

  def show
    post_slug=params[:slug]
    @postDetail=Post.find_by_slug(post_slug)
  end

  def new
    @post=Post.new
  end

  def edit

  end
end

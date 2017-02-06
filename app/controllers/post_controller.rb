class PostController < ApplicationController
  def index
    @posts=Post.all.reverse
  end

  def show
    post_slug=params[:slug]
    @postDetail=Post.find_by_slug(post_slug)
  end

  def new
    @post=Post.new
    @categories = Category.all.map{|c| [c.name,c.id] }.reverse
  end

  def create
    @post=Post.new(post_params)
    if @post.save
      redirect_to post_index_path
    else
      render :new
    end
  end

  def edit
    @post=Post.find_by_slug(params[:slug])
    @categories = Category.all.map{|c| [c.name,c.id] }.reverse
  end

  def update
    post_slug=params[:slug]
    @post=Post.find_by_slug(post_slug)
    if @post.update(post_params)
      redirect_to posts_show_path(@post.slug)
    else
      return :edit
    end
  end

  def destroy
    post_slug=params[:slug]
    @post=Post.find_by_slug(post_slug)

    if @post.destroy!
      redirect_to :back
    end
  end

  private
    def post_params
      params.require(:post).permit(:title,:context,:rating,:category_id)
    end

end

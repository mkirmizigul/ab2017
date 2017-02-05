class CategoriesController < ApplicationController
  before_action :set_category, except:[:index,:new,:create]

  def index
    @categories=Category.all
  end
  def create
    @category=Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end
  def new
    @category=Category.new
  end
  def edit

  end
  def show

  end
  def update
    if @category.update(category_params)
      redirect_to categories_path(@category.id)
    else
      return :edit
    end
  end
  def destroy
    if @category.destroy!
        redirect_to :back
    end
  end
  private
    def set_category
      @category=Category.find(params[:id])
    end
    def category_params
      params.require(:category).permit(:name,:description)
    end
end

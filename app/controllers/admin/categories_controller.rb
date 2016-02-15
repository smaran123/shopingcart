class Admin::CategoriesController < ApplicationController
    before_action :set_category, only: [:edit, :update, :destroy, :category_show]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def show
  end

  def category_show
 @category.update_attribute(:category_show, params[:category_show])
    redirect_to admin_categories_path
  end

  def destroy
    if @category.destroy
      flash[:notice] = "Category deleted successfully."     
      redirect_to admin_categories_path
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :category_show)
  end

end

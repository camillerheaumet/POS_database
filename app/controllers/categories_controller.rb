class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(name: params[:name])
  end

  def new
    @category = Category.new
    render json: @category
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category
    else
      render json: {error: 'Failed to create Category'}
    end
  end

  def destroy
    @category = Category.find(name: params[:name])
    @category.destroy
    render json: 'Category deleted successfully'
  end

  private

  def category_params
    params.require(:category).permit(:name, :image_url)
  end
end

class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(name: params[:name])
  end

  def new
    @item = Item.new
    render json: @item
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      render json: 'Failed to create item'
    end
  end

  def destroy
    @item = Item.find(name: params[:name])
    @item.destroy
    render json: 'Item deleted successfully'
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :image_url, :category_id)
  end
end

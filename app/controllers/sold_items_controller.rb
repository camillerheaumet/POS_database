class SoldItemsController < ApplicationController
    def index
      @soldItems = SoldItem.all
      render json: @soldItems
    end
  
    def show
      @soldItem = SoldItem.find(id: params[:id])
    end
  
    def new
      @soldItem = SoldItem.new
      render json: @soldItem
    end
  
    def create
      @soldItem = SoldItem.new(sold_item_params)
      if @soldItem.save
        render json: @soldItem
      else
        render json: 'Failed to create soldItem'
      end
    end
  
    def destroy
      @soldItem = SoldItem.find(id: params[:id])
      @soldItem.destroy
      render json: 'soldItem deleted successfully'
    end
  
    private
  
    def sold_item_params
      params.require(:sold_item).permit(:item_id, :transaktion_id)
    end
  end
class TransaktionsController < ApplicationController
  def index
    @transaktions = Transaktion.all
    render json: @transaktions
  end

  def show
    @transaktion = Transaktion.find(date: params[:date])
  end

  def new
    @transaktion = Transaktion.new
    render json: @transaktion
  end

  def create
    @transaktion = Transaktion.new(transaktion_params)
    if @transaktion.save
      render json: @transaktion
    else
      render json: 'Failed to save transaktion'
    end
  end

  def transaktion_sold_items
    @transaktion = Transaktion.find(params[:id])
    @transaktion_sold_items = SoldItem.all.select{|sold_item| sold_item.transaktion_id === @transaktion.id}
    render json: @transaktion_sold_items, each_serializer: TransaktionSoldItemSerializer
  end

  private

  def transaktion_params
    params.require(:transaktion).permit(:total, :store_id)
  end
end

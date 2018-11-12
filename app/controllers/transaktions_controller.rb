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

  private

  def transaktion_params
    params.require(:transaktion).permit(:total, :store_id)
  end
end

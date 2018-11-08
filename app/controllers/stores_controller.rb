class StoresController < ApplicationController
  def index
    @stores = Store.all
    render json: @stores
  end

  def show
    @store = Store.find(name: params[:name])
  end

  def new
    @store = Store.new
    render json: @store
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      render json: @store
    else
      render json: {error: 'This store already exists'}
    end
  end

  def destroy
    @store = Store.find(name: params[:name])
    @store.destroy
    render json: {message:'Store deleted successfully'}
  end

  private

  def store_params
    params.require(:store).permit(:name, :store_type, :password)
  end

end

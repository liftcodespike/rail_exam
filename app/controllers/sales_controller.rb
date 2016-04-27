class SalesController < ApplicationController
  def index
  end

  def new
  end

  def update
  end

  def create
    
    @sale = Sale.create(seller: User.find(params[:seller_id]), buyer: User.find(params[:buyer_id]), item: Item.find(params[:item_id]))
    @itemStatus = Item.find(params[:item_id]).update(status: 'sold' )
    redirect_to user_path(session[:user_id])
  end

  def show
  end

  def destroy
  end

  def edit
  end
end

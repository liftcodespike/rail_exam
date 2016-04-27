class ItemsController < ApplicationController
  def index

    @items = Item.where(status: 'selling')

  end

  def new
  end

  def update
  end

  def create
    @item = Item.create(name: params[:name], amount: params[:amount], user: User.find(params[:user_id]), status: params[:status])
    if @item.errors.full_messages.any?
      flash[:errors] = @item.errors.full_messages
      redirect_to :back
    else
    redirect_to '/items'
  end
  end

  def show
  end

  def destroy
    @item = Item.find(params[:id]).destroy
    redirect_to :back
  end

  def edit
  end
end

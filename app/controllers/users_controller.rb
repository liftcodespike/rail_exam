class UsersController < ApplicationController
  def index

  end

  def new
  end

  def update
  end

  def create
    if params[:confirm] == params[:password]
      @user = User.create(first_name: params[:first_name].downcase, last_name: params[:last_name].downcase, email: params[:email].downcase, password: params[:password])
      if @user.errors.full_messages.any?
        flash[:errors] = @user.errors.full_messages
      else
        flash[:notice] = 'User created. Please log in.'
      end
    else 
      flash[:notice] = "Passwords dont match."
    end



    redirect_to :back
  end

  def show
     @selling = Item.where(user: params[:id], status: 'selling')
     puts @selling.inspect

     @soldItems = Sale.where(seller: User.find(session[:user_id]))

    


     @boughtItems = Sale.where(buyer: User.find(session[:user_id]))
  end

  def destroy
  end

  def edit
  end
end

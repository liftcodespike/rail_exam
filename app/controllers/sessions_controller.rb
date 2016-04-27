class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def update
  end

  def create

    @user = User.find_by_email(params[:email].downcase)
     if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:first_name] = @user.first_name
      redirect_to '/items'
    else
      flash[:notice] = 'invalid information'
      redirect_to :back
    end
   
  end

  def show
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  def edit
  end 
end

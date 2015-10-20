class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  

  def index
    @users = User.all
  end

  def show
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
    # render json: @hash
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      respond_to do |format|
        format.json{render :json => @user} 
      end
    end
  end

  def edit
  end

  def update
  end

  def destory
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :address)
  end
  
end





  
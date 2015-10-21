class SessionsController < ApplicationController

  def create
   
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: user
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private 

  def session_params 
   
  end
end

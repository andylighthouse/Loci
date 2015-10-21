class SessionsController < ApplicationController


  def create
    # auth = request.env["omniauth.auth"]
    # session[:omniauth] = auth.except('extra')
    # user = User.sign_in_from_omniauth(auth)
    # session[:user_id] = user.id
    # redirect_to root_url, notice: "Signed In"
   
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: user
    end
  end

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    redirect_to root_path
    # session[:user_id] = nil
    # redirect_to root_url, notice: "Signed Out"
  end


end

class SessionsController < ApplicationController


  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: user
    end
  end

#-----------≈ Facebook Login---------------#
  def fbcreate
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url
  end
#-----------OmniAuth Facebook Login---------------#
#related files: user.rb, omniauth.rb, _nav.html.erb, routes.rb

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    redirect_to root_path
    # session[:user_id] = nil
    # redirect_to root_url, notice: "Signed Out"
  end


end

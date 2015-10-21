class SessionsController < ApplicationController


#-----------OmniAuth Facebook Login---------------#
  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed In"
  end

  def destroy
    session[:user_id] = nil
    session[:omniauth] = nil
    redirect_to root_path
    # session[:user_id] = nil
    # redirect_to root_url, notice: "Signed Out"
  end
#-----------OmniAuth Facebook Login---------------#

end

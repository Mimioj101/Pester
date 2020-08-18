class SessionsController < ApplicationController
 
  def logout
    session.delete(:current_user)
    redirect_to new_user_path
  end

def new
end

def create
  user = User.find_by(name: params[:session][:name])
  if user && user.authenticate(params[:session][:password])
    session[:current_user] = user.id
    redirect_to user
  else
    flash[:error] = "Name or Password is incorrect"
    redirect_to new_login_path
  end
end


end
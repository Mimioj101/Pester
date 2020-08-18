class SessionsController < ApplicationController
 
  def logout
    session.delete(:current_user)
    redirect_to new_user_path
  end

def login
end


end
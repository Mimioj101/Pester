class SessionsController < ApplicationController
 
  def logout
    session.delete(:current_user_id)
    redirect_to new_user_path
  end

end
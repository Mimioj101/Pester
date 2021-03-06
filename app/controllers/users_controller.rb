class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:current_user] = user.id
            redirect_to user_path(user)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.update(user_params)
        redirect_to user_path(@user)
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :bio, :img_url, :preference, :password)
    end
end

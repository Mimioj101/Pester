class MatchesController < ApplicationController
    # skip_before_action :authorized
    def index
        @match = Match.all
    end
    def show
        @match = Match.find(params[:id])
    end

    # def new
    #     @match = Match.new
    #     @cockroach = Cockroach.find(params[:id])
    #     byebug
    # end

    def create
        @cockroach = Cockroach.find(params[:id])
        @match = Match.create(user_id: @current_user.id, cockroach_id: @cockroach.id)

        if @match.valid?
            redirect_to match_path(@match)
        else
            flash[:errors] = @match.errors.full_messages
            redirect_to cockroach_path(@cockroach)
        end
    end

    def destroy
        @match = Match.find(params[:id])
        @match.destroy
        redirect_to user_path(@match.user.id)
    end


    private
    def match_params
        params.require(:match).permit(:user_id, :cockroach_id)
    end

end

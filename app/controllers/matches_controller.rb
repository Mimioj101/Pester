class MatchesController < ApplicationController
    # skip_before_action :authorized
    def index
        @match = Match.all
    end
    def show
        @match = Match.find(params[:id])
    end

    def new
        @match = Match.new
    end

    def create
        @match = Match.create(match_params)
        redirect_to match_path(@match)
    end

    def destroy
        @match = Match.find(params[:id])
        @match.destroy
        redirect_to user_path(@match.user.id)
    end

    private
    def match_params
        params.require(:match).permit(:user_id, :cockroach_id, :rating, :message)
    end

end

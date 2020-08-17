class MatchesController < ApplicationController

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

    def edit
        @match = Match.find(params[:id])
    end

    def update
        @match = Match.update(match_params)
        redirect_to match_path(@match)
    end

    def destroy
        @match = Match.find(params[:id])
        @match.destroy
        redirect_to user_path(@match.user)
    end

    private
    def match_params
        params.require(:match).permit(:user_id, :cockroach_id, :rating, :message)
    end

end

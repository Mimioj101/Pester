class CockroachesController < ApplicationController
    # skip_before_action :authorized, only: [:index, :show]
    before_action :index
    def index
        @cockroaches = Cockroach.all
    end

    def show
        @cockroach = Cockroach.find(params[:id])
    end


end

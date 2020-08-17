class CockroachesController < ApplicationController
    def index
        @cockroaches = Cockroach.all
    end

    def show
        @cockroach = Cockroach.find(params[:id])
    end

end

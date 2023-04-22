class JournalsController < ApplicationController
    before_action :check_for_login

    def index
        @journals = Journal.all
    end

    def show
        @journal = Journal.find params[:id]
    end
end

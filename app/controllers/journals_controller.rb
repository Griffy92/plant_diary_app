class JournalsController < ApplicationController
    before_action :check_for_login

    def index
        @journals = Journal.all
    end

    def show
        @journal = Journal.find params[:id]
    end

    def new
        @journal = @current_user.journals.new
    end

    def create
        journal = @current_user.journals.create journal_params
        redirect_to journal
    end

    private

    def journal_params
        params.require(:journal).permit(:name)
    end
end

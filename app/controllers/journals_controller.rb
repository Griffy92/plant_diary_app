class JournalsController < ApplicationController
    before_action :check_for_login

    def index
        @journals = Journal.all
    end

    def show
        @journal = Journal.find params[:id]
    end

    def edit
        @journal = Journal.find params[:id]
    end

    def new
        @journal = @current_user.journals.new
    end

    def create
        journal = @current_user.journals.create journal_params
        redirect_to journal
    end

    def update
        journal = Journal.find params[:id]
        journal.update journal_params
        redirect_to journal
    end

    def destroy
        journal = Journal.find params[:id]
        journal.destroy
        redirect_to journals_path
    end

    private

    def journal_params
        params.require(:journal).permit(:name, :discord)
    end
end

class JournalsController < ApplicationController

    def create 
        if journal = Journal.find_or_create_by(date: params[:date], user_id: params[:user_id])
            render json: journal, status: :created
        else
            render json: { error: journal.errors.full_messages }, status: :not_acceptable
        end
    end
end

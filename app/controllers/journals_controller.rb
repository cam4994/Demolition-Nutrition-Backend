class JournalsController < ApplicationController

    def create 
        if journal = Journal.find_or_create_by(date: params[:date], user_id: params[:user_id])
            render json: journal, status: :created
        else
            render json: { error: journal.errors.full_messages }, status: :not_acceptable
        end
    end

    def show 
        journal = Journal.find(params[:id])
        # render json: [journal.entries, journal.meals]
        puts journal.entries_and_meals
        render json: journal.entries_and_meals
    end
end

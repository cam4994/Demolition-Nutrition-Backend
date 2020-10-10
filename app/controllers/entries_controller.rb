class EntriesController < ApplicationController

    def create 
        if entry = Entry.create(meal_id: params[:meal_id], journal_id: params[:journal_id], 
            category: params[:category], servings: params[:servings])
            puts entry
            render json: entry, status: :created
        else
            render json: { error: entry.errors.full_messages }, status: :not_acceptable
        end
    end
end

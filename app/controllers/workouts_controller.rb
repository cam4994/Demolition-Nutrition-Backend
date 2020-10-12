class WorkoutsController < ApplicationController

    def create 
        if workout = Workout.create(exercise_id: params[:exercise_id], journal_id: params[:journal_id], 
            calories: params[:calories], duration: params[:duration])
            render json: workout, status: :created
        else
            render json: { error: workout.errors.full_messages }, status: :not_acceptable
        end
    end
end

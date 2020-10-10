class MealsController < ApplicationController

    def create 
        if meal = Meal.find_or_create_by(name: params[:name], user_id: params[:user_id], carbs: params[:carbs], 
            calories: params[:calories], fat: params[:fat], protein: params[:protein])
            puts meal
            render json: meal, status: :created
        else
            render json: { error: meal.errors.full_messages }, status: :not_acceptable
        end
    end
end

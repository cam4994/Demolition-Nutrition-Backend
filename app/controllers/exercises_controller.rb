class ExercisesController < ApplicationController

    def index 
        exercises = Exercise.all 
        render json: exercises
    end
end

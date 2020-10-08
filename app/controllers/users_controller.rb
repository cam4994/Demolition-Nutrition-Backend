class UsersController < ApplicationController

    def create 
        user = User.new(user_params)
        if user.save 
            session[:user_id] = user.id
            render json: { user: user}, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end


    end

    def show 
        # Prevent users from seeing another users page
        return head(:forbidden) unless params[:id] == current_user.to_s
        user = User.find(params[:id])
    end

    def current 
        puts "This is the current user"
        puts session[:user_id]
        render json: {user: current_user}
    end

    private 

    def user_params 
        params.permit(:username, :password, :password_confirmation, 
        :weight, :height, :bodyfat, :age, :sex, :goal, :image)
    end
end

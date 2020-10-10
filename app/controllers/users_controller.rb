class UsersController < ApplicationController

    def create 
        user = User.new(user_params)
        if user.save 
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def show 
        # Prevent users from seeing another users page
        return head(:forbidden) unless params[:id] == current_user.to_s
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        if user.update(update_params)
            render json: user, status: :accepted
        else
            render json: user.errors.full_messages
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
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

    def update_params
        params.permit(:weight, :bodyfat, :goal)
    end
end

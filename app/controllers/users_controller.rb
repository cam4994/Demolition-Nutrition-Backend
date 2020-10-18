class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create]

    def create 
        user = User.create(user_params)
        puts user
        if user.valid? 
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token}, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def show 
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

    private 

    def user_params 
        params.permit(:username, :password, :password_confirmation, 
        :weight, :height, :bodyfat, :age, :sex, :goal, :image)
    end

    def update_params
        params.permit(:weight, :bodyfat, :goal)
    end
end

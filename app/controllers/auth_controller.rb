class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login]
    def login 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token}, status: :accepted
        else
            if user == nil 
                render json: { error: ["That user does not exist." ] }, status: :unauthorized
            else
                render json: { error: ["Password is incorrect" ] }, status: :unauthorized
            end
        end
    end

    def auto_login 
        if current_user 
            render json: current_user 
        else
            render json: {error: "No user logged in"}
        end
    end

    def destroy
        session.delete :user_id
    end
end

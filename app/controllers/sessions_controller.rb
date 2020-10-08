class SessionsController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            puts "After logging in"
            puts current_user
            render json: { user: user}, status: :accepted
        else
            if user == nil 
                render json: { error: ["That user does not exist." ] }, status: :unauthorized
            else
                render json: { error: ["Password is incorrect" ] }, status: :unauthorized
            end
        end
    end

    def destroy
        session.delete :user_id
    end
end

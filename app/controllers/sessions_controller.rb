class SessionsController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            if user == nil 
                error = "That user does not exist." 
            else
                error = "Password is incorrect."
            end
            render 'new'
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end
end

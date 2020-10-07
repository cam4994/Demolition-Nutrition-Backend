class UsersController < ApplicationController

    def create 
        user = User.new(user_params)
        if user.save 
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render 'new'
        end


    end

    def show 
        # Prevent users from seeing another users page
        return head(:forbidden) unless params[:id] == current_user.to_s
        uuser = User.find(params[:id])
    end

    private 

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end

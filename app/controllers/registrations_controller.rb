class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end    
    def create  
        @user = User.params(user_params) 

        if @user.save
            redirect_to root_path, notice: "successfully created account"             
        else
            #flash[:allert] = "something went wrong"
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)        
    end
end
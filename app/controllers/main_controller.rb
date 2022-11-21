class MainController < ApplicationController
    def index
        flash[:notice] = "logged in successfully"
        flash[:alert] = "invalid login"
    end
end
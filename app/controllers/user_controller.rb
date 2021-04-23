class UserController < ApplicationController
    
    def login
        session[:login] = 1
        flash[:notice] = "Logged in"
        redirect_to :controller => :recipes
    end
    
    def logout
        session[:login] = nil
        flash[:notice] = "Logged out"
        redirect_to :controller => :recipes
    end
    
end

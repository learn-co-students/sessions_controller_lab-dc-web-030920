class SessionsController < ApplicationController

    def new
        
    end

    def create
        if !params[:name] || params[:name].empty? #if :name is nil or empty
            # redirect_to(controller: 'sessions', action: 'new') #redirects to the login page
            redirect_to login_path #redirects to the login path just like above.
        else
            session[:name] = params[:name] #sets session[:name] to the :name that was given.
            # redirect_to(controller: 'application', action: 'hello')
            redirect_to root_path #redirects to the root path.
        end
    end

    def destroy
        session.delete :name #This will delete the :name.
        redirect_to root_path #Redirects to the root path
    end

end

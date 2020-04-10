class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  end

  def create 
    session[:name] = params[:name]
    if session[:name] == nil 
    redirect_to '/login'
    elsif session[:name].empty? 
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy 
    session.delete :name
  end

end
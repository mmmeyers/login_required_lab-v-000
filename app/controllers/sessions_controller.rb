class SessionsController < ApplicationController

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path if session[:name].nil?
  end


end

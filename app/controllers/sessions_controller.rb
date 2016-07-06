class SessionsController < ApplicationController
  def new

  end



def create
  username = params[:username]
  password = params[:password]

  user = User.find_by username: params[:username]
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Your Login Was Successful, #{user.username}!"
  else
    flash.now[:alert] = "There was a problem with your username and/or password"
    render :new
  end

end

end

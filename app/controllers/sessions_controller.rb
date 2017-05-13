class SessionsController < ApplicationController
  def new
  	redirect_to 'home/login'
  end
  def create
  	user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
  		redirect_to 'home/chat'
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  	end
  end
  def destroy
  end
end

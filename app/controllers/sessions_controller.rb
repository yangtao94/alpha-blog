class SessionsController < ApplicationController
  def new

  end


  def create
    #create session
    user = User.find_by(email: params[:session][:email].downcase)
    #if email is valid
    if user && user.authenticate(params[:session][:password])
        #authenticate
      #let user's id be this session's id
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in!"
      redirect_to user_path(user)
    else
      flash.now[:danger] = "Either email / password is incorrect"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path

  end



end
class SessionsController < ApplicationController

  def new
  end

  def create

    @user = User.find_by(email: params[:user][:email])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to "/"
    else
     @error = "Something went wrong, make sure your email/password is correct"
      render 'new'
    end
  end

  def destroy
    session.clear

    redirect_to "/"
  end

end

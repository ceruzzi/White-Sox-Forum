class SessionsController < ApplicationController

  def new

  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Goodbye"
  end

  def create
    user=User.find_by(username: params[:username])
    if user
      if user.authenticate(params[:password])
        session["user_id"]=user.id
        redirect_to root_url, notice: "Welcome back"
      else
        redirect_to root_url, notice: "Unknown username or password"
      end
    else
      redirect_to root_url, notice: "Unknown username or password"
    end
  end
end
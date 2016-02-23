class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def new
    @user=User.new
  end

  def authorize
    @user=User.find_by(id: params[:id])
    if @user.blank? || session[:user_id]!=@user.id
      redirect_to root_url, notice: "Can't be blank"
    end
  end

  def show

  end

  def create
    @user=User.new(username: params[:username], password: params[:password])
    if @user.save
      redirect_to root_url, notice: "You are registered"
    else
      render "new"
    end
  end
end



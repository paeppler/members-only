class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    if User.find(params[:id])
      @user = User.find(params[:id])
    end
  end
end

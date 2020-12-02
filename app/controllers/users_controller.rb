class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order("created_at DESC")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end
  
end

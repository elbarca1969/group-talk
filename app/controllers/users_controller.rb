class UsersController < ApplicationController
  before_action :authenticate_user!, only: :edit
  before_action :set_user, only: [:show, :edit, :update, :list]

  def show
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
    @tweets = @user.tweets.order("created_at DESC")
  end

  def edit
    unless user_signed_in? && current_user.id == @user.id
      redirect_to root_path
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def list
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
    @groupLists = @user.groups.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc")
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :introduction, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

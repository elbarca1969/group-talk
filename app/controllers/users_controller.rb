class UsersController < ApplicationController
  before_action :authenticate_user!, only: :edit
  before_action :set_user, only: [:show, :edit, :update, :list, :owner, :purge]
  before_action :right_bar, only: [:show, :list, :owner,:search]

  def show
    @tweets = @user.tweets.with_attached_image.order("created_at DESC").includes(:group, :likes, :image_attachment)
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
    @groupLists = @user.groups.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").includes(:group_users, :users, :user)
  end

  def owner
    @groupOwners = @user.owned_groups.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").includes(:group_users, :users)
  end

  def purge
    @user.avator.purge
    redirect_to edit_user_path(current_user.id)
  end

  def search
    @q = User.ransack(params[:q])
    @users = @q.result
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :introduction, :email, :avator)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def right_bar
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
  end

end

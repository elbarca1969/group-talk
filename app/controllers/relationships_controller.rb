class RelationshipsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]
  before_action :right_bar, only: [:index, :following, :follower]

  def index
    followings = current_user.try(:followings)
    @tweets = Tweet.with_attached_image.where(user: followings).order("created_at DESC").includes(:user, :group, :likes, :image_attachment, user: { avator_attachment: :blob })
  end

  def create
    following = current_user.follow(@user)
    following.save
    redirect_to @user
  end

  def destroy
    following = current_user.unfollow(@user)
    following.destroy
    redirect_to @user
  end

  def following
    @user = User.find(params[:id])
    @followings = @user.followings.includes(:avator_attachment)
  end

  def follower
    @user = User.find(params[:id])
    @followers = @user.followers.includes(:avator_attachment)
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.nickname = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:follow_id])
  end

  def right_bar
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
  end

end

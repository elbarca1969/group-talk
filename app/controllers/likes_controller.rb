class LikesController < ApplicationController
  before_action :set_tweet, only: [:create, :destroy, :list]

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: @tweet.id)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: @tweet.id)
    @like.destroy
  end

  def list
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
    @likes = @tweet.likes
    @users = User.where(likes: @likes).with_attached_avator
  end

  private

  def set_tweet
    @group = Group.find(params[:group_id])
    @tweet = @group.tweets.find(params[:tweet_id])
  end

end

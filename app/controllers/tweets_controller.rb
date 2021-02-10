class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit]
  before_action :set_group
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
    @tweets = @group.tweets.with_attached_image.order("created_at DESC").includes(:user, :likes, :image_attachment, user: { avator_attachment: :blob })
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = @group.tweets.new(tweet_params)
    if @tweet.save
      redirect_to group_tweets_path(@group)
    else
      @tweets = @group.tweets.includes(:user)
      render :new
    end
  end

  def show
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
  end

  def edit
    unless user_signed_in? && current_user.id == @tweet.user_id
      redirect_to root_path
    end
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to group_tweets_path(@group)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @tweet.user_id
      @tweet.destroy
      redirect_to group_tweets_path(@group)
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_tweet
    @tweet = @group.tweets.find(params[:id])
  end

end

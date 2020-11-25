class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit]
  before_action :set_group

  def index
    @tweets = @group.tweets.includes(:user).order("created_at DESC")
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
    @tweet = @group.tweets.find(params[:id])
  end

  def edit
    @tweet = @group.tweets.find(params[:id])
    unless user_signed_in? && current_user.id == @tweet.user_id
      redirect_to root_path
    end
  end

  def update
    @tweet = @group.tweets.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to group_tweets_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @tweet = @group.tweets.find(params[:id])
    if current_user.id == @tweet.user_id
      @tweet.destroy
      redirect_to group_tweets_path(@group)
    else
      render :index
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

end

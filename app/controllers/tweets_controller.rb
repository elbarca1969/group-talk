class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit]

  def index
    @group = Group.find(params[:group_id])
    @tweets = @group.tweets.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @tweet = @group.tweets.new(tweet_params)
    if @tweet.save
      redirect_to group_tweets_path(@group)
    else
      @tweets = @group.tweets.includes(:user)
      render :new
    end
  end

  def show
    @group = Group.find(params[:group_id])
    @tweet = @group.tweets.find(params[:id])
  end

  def edit
    @group = Group.find(params[:group_id])
    @tweet = @group.tweets.find(params[:id])
    unless user_signed_in? && current_user.id == @tweet.user_id
      redirect_to root_path
    end
  end

  def update
    @group = Group.find(params[:group_id])
    @tweet = @group.tweets.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to group_tweets_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:group_id])
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

end

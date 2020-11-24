class TweetsController < ApplicationController
  
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

  private

  def tweet_params
    params.require(:tweet).permit(:content).merge(user_id: current_user.id)
  end

end

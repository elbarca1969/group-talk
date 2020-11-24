class TweetsController < ApplicationController
  
  def index
    @group = Group.find(params[:group_id])
    @tweets = @group.tweets.includes(:user).order("created_at DESC")
  end

end

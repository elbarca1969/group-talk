class GroupsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = current_user.owned_groups.new(group_params)
    @group.users << current_user
    if current_user.save
      redirect_to group_tweets_path(@group)
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_path(@group.id)
    else
      render :edit
    end
  end

  def show
    @group = Group.find(params[:id])
    @tweets = @group.tweets.includes(:user).order("created_at DESC")
  end

  def list
    @groups = Group.joins(:group_users).group(:group_id).order('count(group_id) DESC').order('created_at ASC')
  end

  def join
    @group = Group.find_by(id: params[:id])
    if !@group.users.include?(current_user)
      @group.users << current_user
      redirect_to group_tweets_path(@group)
    end
  end

  def quit
    @group = Group.find(params[:id])
    @group.users.delete(current_user)
    redirect_to root_path
  end

  def search
    @groups = Group.search(params[:keyword]).joins(:group_users).group(:group_id).order('count(group_id) DESC').order('created_at ASC')
  end

  private
  
  def group_params
    params.require(:group).permit(:name, :content, user_ids: [])
  end

end
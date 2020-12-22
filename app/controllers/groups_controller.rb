class GroupsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_group, only: [:show, :edit, :update, :destroy, :join, :quit]

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

  def show
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc").limit(20)
    @tweets = @group.tweets.includes(:user).order("created_at DESC")
  end

  def edit
    unless user_signed_in? && current_user.id == @group.user_id
      redirect_to root_path
    end
  end

  def update
    if @group.update(group_params)
      redirect_to group_path(@group.id)
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to list_groups_path
  end

  def list
    @groups = Group.select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc")
    @newgroups = Group.order("created_at DESC").limit(20)
  end

  def join
    if !@group.users.include?(current_user)
      @group.users << current_user
      redirect_to group_tweets_path(@group)
    end
  end

  def quit
    @group.users.delete(current_user)
    redirect_to root_path
  end

  def search
    @groups = Group.search(params[:keyword]).select("groups.*, COUNT(group_users.id) users_count").left_joins(:group_users).group("groups.id").order("users_count desc")
    @newgroups = Group.order("created_at DESC").limit(20)
  end

  private
  
  def group_params
    params.require(:group).permit(:name, :content, user_ids: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
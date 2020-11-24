class GroupsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = current_user.groups.new(group_params)
    if current_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def list
    @groups = Group.order("name ASC")
  end

  def join
    @group = Group.find_by(id: params[:id])
    if !@group.users.include?(current_user)
      @group.users << current_user
      redirect_to root_path
    end
  end

  private
  
  def group_params
    params.require(:group).permit(:name, :content, user_ids: [])
  end

end
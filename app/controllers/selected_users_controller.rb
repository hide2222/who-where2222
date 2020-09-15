class SelectedUsersController < ApplicationController
 
  def new
    @selecteduser = Selecteduser.new
  end

  def index
    @selectedusers = Selecteduser.all
  end

  def create
    @selecteduser = Selecteduser.new(serecteduser_params)
    if @selecteduser.save
    redirect_to root_path
    else
    render :index
    end
  end


  private

  def serecteduser_params
    params.require(:selecteduser).permit(:logic_result_id).merge(user_id:current_user.id)
  end
end

class SelectedUsersController < ApplicationController
 
  def new
    @selected_user = Selecteduser.new
  end

  def index
    @selected_users = Selecteduser.all
  end

  def create
    @selected_user = Selecteduser.new(serected_user_params)
    if @selected_user.save
    redirect_to root_path
    else
    render :index
    end
  end


  private

  def serected_user_params
    params.require(:selecteduser).merge(user_id:current_user.id,logic_result_id:logic_result_id)
  end
end

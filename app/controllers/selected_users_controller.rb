class SelectedUsersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_user, only: [:new, :create]
  before_action :set_logic1
  def new
    @selecteduser = Selecteduser.new
    @logic1 = Logic1.new
  end

  def index
    @selectedusers = Selecteduser.all
  end

  def create
    @selecteduser = Selecteduser.new(serecteduser_params)
    if @selecteduser.save
    redirect_to root_path
    else
    render :new
    end
  end


  private

  def serecteduser_params
    gender_id = params[:selecteduser][:gender_id]
    params.require(:selecteduser).permit(:gender_id).merge(user_id:current_user.id,logic_result_id:@logic1.logic_result_id)
    
  end

  def set_user
    @user = current_user.id
  end

  def set_logic1
    @logic1 = Logic1.find_by(user_id:current_user.id)
  end

end

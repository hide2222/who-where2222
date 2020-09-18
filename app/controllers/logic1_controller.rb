class Logic1Controller < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_user
  before_action :set_logic1
  #before_action :correct_user, only: [:create]
  

  def new
    @logic1 = Logic1.new
  end
    
  def create
    @logic1 = Logic1.new(logic1_params)
    if@logic1.save
      redirect_to new_selected_user_path
    else
      render :new
    end
  end

  private
  def logic1_params
    params.require(:logic1).permit(:logic_result_id).merge(user_id:current_user.id)
  end

  def set_user
    @user = current_user.id
  end

  def set_logic1
    @logic1 = Logic1.find_by(user_id:current_user.id)
  end
      
end

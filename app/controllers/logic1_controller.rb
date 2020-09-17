class Logic1Controller < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @logic1 = Logic1.new
  end
    
  def create
    @logic1 = Logic1.new(logic1_params)
    if @logic1.save
      redirect_to new_selected_user_path
    else
      render:new
    end
  end

  private
  def logic1_params
  params.require(:logic1).permit(:logic_result_id).merge(user_id:current_user.id)
  end
end

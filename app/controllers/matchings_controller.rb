class MatchingsController < ApplicationController
  before_action :set_selecteduser

  def index 
    @matching = Matching.new
  end

  def create
    @matching = Matching.new(matching_params)
    if @matching.save
      redirect_to  new_room_path

    
  end

  private

  def matching_params
    params.require(:maching).merge(user_id:current_user.id, selecteduser_id:@selecteduser.id)
  end

  def set_selecteduser
    @selecteduser = Serecteduser.find(params[:selecteduser_id])
  end

end

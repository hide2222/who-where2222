class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room =Room.new(room_params)
    if @room.save
    redirect_to room_path
    else
    render :new
    end
  end

  def show
    @room = Room.find(params[:room_id])

  private

  def room_params
   params.require(:room).permit(:matching_id:).merge(user_id:current_user.id, selecteduser_id:selecteduser.id)
  end
  
  def set_selecteduser
    @selecteduser = Selecteduser.find(params[:selecteduser_id])
  end
  def set_matching
    @matching = Matching.find[params[:matching_id]]
  end
end
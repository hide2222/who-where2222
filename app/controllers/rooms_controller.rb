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
    @room = Room.find(params[:matching_id])

  private

  def room_params
   params.require(:room).permit(:matching_id:).merge(user_id:current_user.id, selecteduser_id:selecteduser.id)
  end
end
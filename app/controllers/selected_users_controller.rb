class SelectedUsersController < ApplicationController
 
  def new
    @selected_user = Selecteduser.new
  end

  def index
    @selected_users = Selecteduser.all
  end
end

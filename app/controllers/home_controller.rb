class HomeController < ApplicationController

	before_action :authenticate_user!, except: :index  #ensure that the user is authenticated before logging him in to the lab page

  def index
  if
  	user_signed_in?
  	redirect_to home_lab_path
  end
  
  end

  def lab
  if Profile.where(user: current_user.id).empty?
  	redirect_to new_profile_path(user: current_user)
  else
  @profile = Profile.find_by user: current_user
  @name = @profile.name
  end
  end
  
  
end

class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end
  
  def show
    @gym = Gym.find(params[:id])
    @ratings = @gym.ratings
  end
  
  #need to add view and routes for this
   def create
    gym = Gym.new
    gym.name = params[:gym][:name]
    gym.location_id = params[:gym][:location_id]
    gym.save!
    redirect_to "/locations/#{gym.location_id}"
  end
  
end
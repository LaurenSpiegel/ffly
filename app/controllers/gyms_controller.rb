class GymsController < ApplicationController
  def index
    @gyms = Gym.asc(:name)
   
  end
  
  def show
    @gym = Gym.find(params[:id])
    @ratings = @gym.ratings
    @location =@gym.location
    @average_stars = @ratings.avg(:stars)
  end
  

   def create
    gym = Gym.new
    gym.name = params[:gym][:name]
    gym.location_id = params[:gym][:location_id]
    gym.save!
    redirect_to "/locations/#{gym.location_id}"
  end
  
end
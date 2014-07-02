class Gym
  include Mongoid::Document
  
  has_many :ratings
  belongs_to :location
  
  field :name, type: String
 
end
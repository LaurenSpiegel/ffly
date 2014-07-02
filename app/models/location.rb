class Location
  include Mongoid::Document
  
  has_many :gyms
  
  field :name, type: String
end
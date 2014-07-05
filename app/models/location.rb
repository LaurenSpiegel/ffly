class Location
  include Mongoid::Document
  
  has_many :gyms
  
  field :name, type: String
  field :zip, type: Integer
end
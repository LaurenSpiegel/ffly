class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  
  field :email, type: String
  field :password_digest, type: String
  
  validate :email, presence: true, uniqueness: true
  
  has_secure_password
end
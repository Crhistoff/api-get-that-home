class User < ApplicationRecord
    has_secure_password
    enum role: { admin: 'landlord', user: 'homeseeker' }
    has_many :property_users
    has_many :properties, through: :property_users
    validates :name, presence: true
    validates :username, presence: true
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
    validates :password, length: { minimum: 6 }, allow_nil: true
end
  
class Property < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :property_users
    has_many :users, through: :property_users
    validates :name, presence: true
    validates :operation_type, presence: true
    validates :address, presence: true
    validates :phone, presence: true
    validates :address, length: { maximum: 140, message: 'Cannot be more than 140 characters' }
end
  
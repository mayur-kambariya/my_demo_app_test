class Customer < ActiveRecord::Base
  has_many :bookings
  has_many :cleaners,through: :bookings
end

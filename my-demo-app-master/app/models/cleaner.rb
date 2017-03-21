class Cleaner < ActiveRecord::Base
has_many :bookings
has_and_belongs_to_many :cities
has_many :customers,through: :bookings
end

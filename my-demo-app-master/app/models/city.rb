class City < ActiveRecord::Base
  has_and_belongs_to_many :cleaners
end

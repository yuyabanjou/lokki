class Itinerary < ApplicationRecord

	belongs_to :traveller

	has_many :itinerary_spots

end

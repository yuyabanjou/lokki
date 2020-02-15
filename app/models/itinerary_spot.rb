class ItinerarySpot < ApplicationRecord

	belongs_to :itinerary
	belongs_to :spot, optional: true

	enum moving_genre: {徒歩: 0, 電車: 1, バス: 2, 船: 3, その他: 4}

end

class Itinerary < ApplicationRecord

	belongs_to :traveller

	has_many :itinerary_spots

	enum public_status: {非公開: false, 公開中: true}

end

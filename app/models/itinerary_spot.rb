class ItinerarySpot < ApplicationRecord

	belongs_to :itinerary
	belongs_to :spot, optional: true

	enum moving_genre: {徒歩: 0, 電車: 1, バス: 2, 船: 3, その他: 4}

	# バリデーションを書きたかったが保留
	# validates :arrival_plan_time_after_start_plan_time

	# private
	# 	def arrival_plan_time_after_start_plan_time
	# 		unless self.arrival_plan_time > self.start_plan_time
	# 			errors.add(:arrival_plan_time, ": 到着日時は出発日時より後に設定してください")
	# 		end
	# 	end

end

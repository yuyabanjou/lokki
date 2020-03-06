class FavoriteSpot < ApplicationRecord

	# お気に入り機能
	belongs_to :traveller
  belongs_to :spot

end

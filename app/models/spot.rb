class Spot < ApplicationRecord

	belongs_to :traveller
	attachment :image

	# お気に入り機能
	has_many :favorite_spots

	def favorited_by?(traveller)
		favorite_spots.where(traveller_id: traveller.id).exists?
  end

	enum genre: {観光地: 0, ショッピング: 1, 食事: 2, 宿泊: 3, その他: 4}
	enum public_status: {非公開: false, 公開中: true}

end

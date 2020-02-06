class Spot < ApplicationRecord

	belongs_to :traveller
	attachment :image
end

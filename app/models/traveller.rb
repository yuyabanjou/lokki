class Traveller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :spots, dependent: :destroy
  has_many :itineraries, dependent: :destroy

  # お気に入り機能
  has_many :favorite_spots
  has_many :my_favorite_spots, through: :favorite_spots, source: :spot

end

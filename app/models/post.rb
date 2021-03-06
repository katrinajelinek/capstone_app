class Post < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags, dependent: :destroy
  has_many :offers, dependent: :destroy
  belongs_to :user

  validates :plant_type, presence: true
  validates :location, presence: true
  validates :description, length: { maximum: 400 }

  def offer_accepted?
    offers.find_by(accepted: true)
  end
end

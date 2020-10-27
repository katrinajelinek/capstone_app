class Offer < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :message, length: { in: 10..200 }
end

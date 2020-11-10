class Offer < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :message, length: { in: 5..200 }
end

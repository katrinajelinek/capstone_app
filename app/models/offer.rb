class Offer < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :message, presence: true
end

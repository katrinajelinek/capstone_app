class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :offers, dependent: :destroy
  has_many :posts, dependent: :destroy
end

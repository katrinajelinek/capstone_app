class User < ApplicationRecord
  has_many :offers
  has_many :posts
end

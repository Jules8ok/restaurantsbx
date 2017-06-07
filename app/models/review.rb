class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user


  validates :restaurant, presence: true
  validates :user, presence: true
  validates :content, length: {minimum: 10 }
end

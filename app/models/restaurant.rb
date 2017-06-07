class Restaurant < ApplicationRecord
	validates :name, :photo, :price, :description, presence: true
	mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :reviews
end

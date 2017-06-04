class Restaurant < ApplicationRecord
	validates :name, :photo, :price, :description, presence: true
	mount_uploader :photo, PhotoUploader
end

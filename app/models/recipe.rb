class Recipe < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }

	mount_uploader :image, ImageUploader
end

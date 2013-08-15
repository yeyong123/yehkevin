class Picture < ActiveRecord::Base
  attr_accessible :image, :product_id, :image_cache, :remove_image
  attr_accessible :image, :product_id, :image_cache,:remove_image
	belongs_to :products
	mount_uploader :image, ImageUploader
end

class Bananer < ActiveRecord::Base
  attr_accessible :button, :describe, :image, :url, :image_cache
	mount_uploader :image, ImageUploader
end

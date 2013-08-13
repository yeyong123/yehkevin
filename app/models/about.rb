class About < ActiveRecord::Base
  attr_accessible :content, :image, :title, :image_cache,:sorts_attributes, :sort_id
	mount_uploader :image, ImageUploader
	belongs_to :sort
end


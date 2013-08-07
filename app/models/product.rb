class Product < ActiveRecord::Base
  attr_accessible :content, :list_id, :number, :title, :pictures_attributes
	belongs_to :list
	has_many :pictures
	accepts_nested_attributes_for :pictures



end

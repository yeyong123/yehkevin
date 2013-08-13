class Sort < ActiveRecord::Base
  attr_accessible :name
	has_many :abouts

end

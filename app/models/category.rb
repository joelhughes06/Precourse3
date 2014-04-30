class Category < ActiveRecord::Base
	has_many :titles, -> { order :title }
end
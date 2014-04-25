class Title < ActiveRecord::Base
	has_many :title_users, foreign_key: :user_id
	has_many :users, through: :title_users
	has_many :movie_categories, foreign_key: :title_id
	has_many :votes
	belongs_to :category, foreign_key: 'genre_id', class_name: 'Category'

end

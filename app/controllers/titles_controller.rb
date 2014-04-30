class TitlesController < ApplicationController
before_action :set_title, only: [:show]

	def index
		@titles = Title.all.sort_by {|x| x.category}
		@categories = Category.all.sort_by {|z| z.genre}.reverse
	end

	def new
	end

	def create

	end

	def show
		@title = Title.find(params[:id])
		if @title
			render 'titles/show'
		else
			flash[:error] = 'No movies yet listed.'
		end
	end

	def edit
	end

	def update
	end

	def set_title
		@title = Title.find(1)
	end

	def match_catit
		@titles.category == @categories.genre
	end

	def search
		@results = Title.search_by_title(params[:search_term])
	end

end

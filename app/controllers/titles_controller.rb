class TitlesController < ApplicationController
before_action :set_title, only: [:show]

	def index
		@titles = Title.all
		if @titles
			render 'titles/index'
		else
			flash[:error] = 'No movies yet listed.'
		end
	end

	def new
	end

	def create

	end

	def show
		@title = Title.find(params[:id])
	end

	def edit
	end

	def update
	end

end

class TitlesController < ApplicationController
	def index
		@titles = Title.all
		if @titles
			redirect_to '/'
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

class UsersController < ApplicationController

	def index
		@sign_in

	end

	def show
		render 'show'
	end

	def sign_in
		@login = true
	end

end
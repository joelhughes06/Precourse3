class UsersController < ApplicationController

	def index

	end

	def show
		@user = User.first
		if @user
			puts @user
		else
			puts 'Guest'
		end
	end

end
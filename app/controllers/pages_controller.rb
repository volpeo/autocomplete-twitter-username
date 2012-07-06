class PagesController < ApplicationController

	def index
		if current_user
			@friends = session[:friends]
		end
	end

end

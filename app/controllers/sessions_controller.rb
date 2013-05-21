class SessionsController < Devise::SessionsController
	def new
	@sessions= Session.new
	end

end
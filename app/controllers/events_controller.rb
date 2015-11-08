class EventsController < ApplicationController
	
	def search
		
	end

	def select
		keyword = params[:keyword]
		@events = HTTParty.get("http://connpass.com/api/v1/event/?keyword=" + keyword)
	end

	def create

	end
end

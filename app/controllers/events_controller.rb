class EventsController < ApplicationController
	def create
		event = Event.new params[:event]
		if event.save
			render json: event
		end
	end
end

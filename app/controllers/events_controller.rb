class EventsController < ApplicationController
	def create
		event = Event.new params.require(:event).permit(:title, :start, :end)
		if event.save
			render json: event
		end
	end
end

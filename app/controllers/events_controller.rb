class EventsController < ApplicationController
	def show
		begin
			start = params.require(:start)
			tail = params.require(:end)
			render json: Event.where(start: start..tail)
		rescue ActionController::ParameterMissing
			render json: {error: "Requires 'start' and 'end' parameters."}, status: 400
		end
	end

	def create
		event = Event.new params.require(:event).permit(:title, :start, :end)
		if event.save
			render json: event
		end
	end
end

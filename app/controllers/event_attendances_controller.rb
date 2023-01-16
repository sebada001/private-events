class EventAttendancesController < ApplicationController
    def new
        @event_attendance = EventAttendance.new()
    end
    
    def create
        @event_attendance = EventAttendance.new(event_attendance_params)
        @event = Event.find(params[:event_attendance][:attended_id])

        if @event_attendance.save
            redirect_to event_url(@event)
        else
            render :new, status: :unprocessable_entity
        end

    end

    private
    def event_attendance_params
        params.require(:event_attendance).permit(:attendant_id, :attended_id)
    end
  
end
class EventsController < ApplicationController
    def index
        @events = Event.all
        @signed_in = user_signed_in?
        @user = current_user
    end

    def new
        @event = current_user.events_created.new
    end
    
    def create
        @event = current_user.events_created.new(event_params)
    
        if @event.save
            redirect_to event_url(@event)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @event = Event.find(params[:id])
        @user = current_user
    end

    private
    def event_params
        params.require(:event).permit(:location, :date)
    end
  
end

# bin/rails g migration CreateJoinTableAttendeeAttendedEvent users events
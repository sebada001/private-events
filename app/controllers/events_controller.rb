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
            redirect_to users_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def event_params
        params.require(:post).permit(:location, :date)
    end
  
end

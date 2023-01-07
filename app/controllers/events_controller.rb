class EventsController < ApplicationController
    def index
        @events = Event.all
        @signed_in = user_signed_in?
    end
end

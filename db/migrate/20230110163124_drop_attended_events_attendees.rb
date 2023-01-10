class DropAttendedEventsAttendees < ActiveRecord::Migration[7.0]
    def change
      drop_table :attended_events_attendees
    end
end

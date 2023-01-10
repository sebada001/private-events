class CreateJoinTableAttendeeAttendedEvent < ActiveRecord::Migration[7.0]
  def change
    # add_reference :attended_events, :attendee, foreign_key: { to_table: :users }
    # add_reference :attended_events, :attended_event, foreign_key: { to_table: :events }
    create_join_table :users, :events do |t|
      t.index [:user_id, :event_id]
      t.index [:event_id, :user_id]
    end
  end
end

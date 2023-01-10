class CreateEventAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendances do |t|
      t.integer :attendant_id
      t.integer :attended_id
      t.timestamps
    end
  end
end

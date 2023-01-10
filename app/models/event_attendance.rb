class EventAttendance < ApplicationRecord
    belongs_to :attendant, class_name: "User"
    belongs_to :attended, class_name: "Event"
  end
class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :event_attendances, foreign_key: :attended_id
    has_many :attendants, through: :event_attendances, source: :attendant_id
    validates :creator_id, presence: true
end

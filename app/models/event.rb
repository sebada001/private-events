class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :event_attendances, foreign_key: :attended_id
    has_many :attendants, through: :event_attendances, source: :attendant
    validates :creator_id, presence: true
    scope :past, ->(date = Time.now) { where("date <= ?", date) }
    scope :future, ->(date = Time.now) { where("date >= ?", date) }
end

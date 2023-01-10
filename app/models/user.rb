class User < ApplicationRecord
  has_many :events_created, foreign_key: :creator_id, class_name: "Event"
  has_many :event_attendances, foreign_key: :attendant_id
  has_many :events_attended, through: :event_attendances, source: :attended
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end

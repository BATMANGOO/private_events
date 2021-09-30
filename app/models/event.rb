class Event < ApplicationRecord
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :enrollments, dependent: :destroy
  has_many :attendees, through: :enrollments, source: :user
end

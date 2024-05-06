class User < ApplicationRecord
  has_many :administered_events, class_name: 'Event', foreign_key: 'administrator_id'

  has_many :participations
  has_many :attended_events, through: :participations, source: :event
end

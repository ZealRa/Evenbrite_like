class Event < ApplicationRecord
  # belongs_to :administrator, class_name: 'User'

  has_many :participations
  has_many :participants, through: :participations, source: :user

  validates :start_date, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0, divisible_by: 5 }
  validates :title, presence: true, length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  validates :location, presence: true
end

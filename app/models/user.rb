class User < ApplicationRecord
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

  has_many :administered_events, class_name: 'Event', foreign_key: 'administrator_id'

  has_many :participations
  has_many :attended_events, through: :participations, source: :event
end

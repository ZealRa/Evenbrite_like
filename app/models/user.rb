class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :send_welcome_email

  has_many :administered_events, class_name: 'Event', foreign_key: 'administrator_id'

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

  has_many :administered_events, class_name: 'Event', foreign_key: 'administrator_id'

  has_many :participations
  has_many :attended_events, through: :participations, source: :event
end

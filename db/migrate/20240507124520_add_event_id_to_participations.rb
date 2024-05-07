class AddEventIdToParticipations < ActiveRecord::Migration[7.1]
  def change
    add_reference :participations, :event, null: false, foreign_key: true
  end
end

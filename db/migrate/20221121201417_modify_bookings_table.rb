class ModifyBookingsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :slot_id, :bigint
  end
end

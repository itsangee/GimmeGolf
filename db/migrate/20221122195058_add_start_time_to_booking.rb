class AddStartTimeToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :game_start, :time
  end
end

class RemoveGameStartFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :game_start
  end
end

class RemoveTimeFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :time
  end
end

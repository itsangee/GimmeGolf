class RemoveColumnsFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date, :time
  end
end

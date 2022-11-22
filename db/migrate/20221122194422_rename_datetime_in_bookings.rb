class RenameDatetimeInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :datetime, :date
  end
end

class ChangeDatetimeToTime < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :datetime, :date
  end
end

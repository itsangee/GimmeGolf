class AddTimeObject < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :datetime, :datetime
  end
end

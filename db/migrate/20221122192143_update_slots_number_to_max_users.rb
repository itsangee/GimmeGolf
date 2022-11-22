class UpdateSlotsNumberToMaxUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :slots, :number_slots
  end
end

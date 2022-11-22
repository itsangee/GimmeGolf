class ChangeDateTimeToTime < ActiveRecord::Migration[7.0]
  def change
    change_column :slots, :start_time, :time
    change_column :slots, :end_time, :time
  end
end

class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :number_slots, default: 0, null: false
      t.bigint :course_id
      t.timestamps
    end
  end
end

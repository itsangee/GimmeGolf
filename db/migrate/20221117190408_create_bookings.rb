class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :course, null: false, foreign_key: true
      t.string :date
      t.string :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class RemoveCourseFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :course_id
  end
end

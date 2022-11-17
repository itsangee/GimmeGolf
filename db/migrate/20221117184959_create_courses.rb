class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price
      t.integer :holes
      t.integer :par

      t.timestamps
    end
  end
end

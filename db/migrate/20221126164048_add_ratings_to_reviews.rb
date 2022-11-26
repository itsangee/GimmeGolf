class AddRatingsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :ratings, :integer
  end
end

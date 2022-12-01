class RemoveContentFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :content
  end
end

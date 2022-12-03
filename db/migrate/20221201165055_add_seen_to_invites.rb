class AddSeenToInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :invite_seen, :boolean, default: false, null: false
  end
end

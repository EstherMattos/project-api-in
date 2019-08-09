class ChangePresenceColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :presences, :user_id, :users_id
    rename_column :presences, :lession_id, :lessions_id
  end
end

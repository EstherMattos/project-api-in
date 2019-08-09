class CreateUserGroupJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :groups do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
    end
  end
end

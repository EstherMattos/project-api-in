class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end

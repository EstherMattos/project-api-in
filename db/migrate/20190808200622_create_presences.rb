class CreatePresences < ActiveRecord::Migration[5.2]
  def change
    create_table :presences do |t|
      t.references :user, foreign_key: true
      t.references :lession, foreign_key: true
      t.integer :status
      t.integer :performance
      t.text :observation
      t.time :minutes_late

      t.timestamps
    end
  end
end

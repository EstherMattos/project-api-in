class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :status
      t.string :link
      t.integer :performance
      t.text :observation
      t.references :subable, foreign_key: true

      t.timestamps
    end
  end
end

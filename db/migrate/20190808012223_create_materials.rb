class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.references :courses
      t.date :day
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end

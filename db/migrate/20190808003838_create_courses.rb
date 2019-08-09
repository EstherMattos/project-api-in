class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :classPlan
      t.string :enviromentSetting
      t.references :selective_processes, foreign_key: true

      t.timestamps
    end
  end
end

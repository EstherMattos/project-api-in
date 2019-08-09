class CreateLessions < ActiveRecord::Migration[5.2]
  def change
    create_table :lessions do |t|
      t.references :courses, foreign_key: true
      t.date :day
      t.time :startTime
      t.time :duration

      t.timestamps
    end
  end
end

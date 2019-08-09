class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :subject
      t.text :description

      t.timestamps
    end
  end
end

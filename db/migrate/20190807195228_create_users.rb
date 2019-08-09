class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :adm
      t.string :name
      t.string :email
      t.string :password
      t.integer :kind

      t.timestamps
    end
  end
end

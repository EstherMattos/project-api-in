class AddDescriptionToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :description, :text
  end
end

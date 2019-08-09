class RemoveColumnDayFromMaterials < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :day, :date
  end
end

class RemoveStarTimeFromMaterial < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :startTime, :time
  end
end

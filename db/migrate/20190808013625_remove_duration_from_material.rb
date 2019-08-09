class RemoveDurationFromMaterial < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :duration, :time
  end
end

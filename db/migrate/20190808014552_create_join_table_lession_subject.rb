class CreateJoinTableLessionSubject < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lessions, :subjects do |t|
      # t.index [:lession_id, :subject_id]
      # t.index [:subject_id, :lession_id]
    end
  end
end

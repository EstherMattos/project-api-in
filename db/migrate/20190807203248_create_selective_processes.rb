class CreateSelectiveProcesses < ActiveRecord::Migration[5.2]
  def change
    create_table :selective_processes do |t|
      t.integer :year
      t.integer :schoolTerm
      t.date :startDate
      t.date :registrationDeadline
      t.date :finishDate

      t.timestamps
    end
  end
end

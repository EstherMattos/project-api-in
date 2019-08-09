class AddSituationToParticipation < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :situation, :integer
  end
end

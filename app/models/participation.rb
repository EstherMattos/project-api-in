class Participation < ApplicationRecord
  enum situation: [:attending, :approved, :disapproved, :dropout, :disqualified]
  belongs_to :user, optional: true
  belongs_to :selective_process, optional: true

  
end

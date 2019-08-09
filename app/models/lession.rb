class Lession < ApplicationRecord
  belongs_to :course, optional: true
  has_and_belongs_to_many :subjects
  
  has_many :feedbacks, as: :feedble
end

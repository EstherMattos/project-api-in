class Course < ApplicationRecord
  belongs_to :selective_process, optional: true
  has_many :materials
  has_many :lessions
end

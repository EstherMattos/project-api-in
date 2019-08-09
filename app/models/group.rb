class Group < ApplicationRecord
  belongs_to :activity

  has_many :submissions, as: :subable

  has_many :users, through: :collaborations

  has_and_belongs_to_many :users
end

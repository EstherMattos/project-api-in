class User < ApplicationRecord
    enum kind: [:member, :director, :exmember, :candidate, :externalCollaborator]

     has_many :participations
     has_many :selective_processes, through: :participations
     has_many :submissions, as: :subable

     has_many :groups, through: :collaborations

     has_and_belongs_to_many :groups
end

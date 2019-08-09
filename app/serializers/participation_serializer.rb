class ParticipationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :selective_process
end

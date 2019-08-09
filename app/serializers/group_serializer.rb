class GroupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :activity
end

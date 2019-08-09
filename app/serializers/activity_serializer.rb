class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :lession
end

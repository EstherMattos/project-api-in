class PresenceSerializer < ActiveModel::Serializer
  attributes :id, :status, :performance, :observation, :minutes_late
  belongs_to :user, optional: true
  belongs_to :lession, optional: true
end

class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :status, :link, :performance, :observation
  has_one :subable
end

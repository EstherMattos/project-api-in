class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :feedble
end

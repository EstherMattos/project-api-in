class LessionSerializer < ActiveModel::Serializer
  attributes :id, :day, :startTime, :duration
  belongs_to :course
end

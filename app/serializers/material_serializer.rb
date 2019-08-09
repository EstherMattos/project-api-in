class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :description, :courses_id, :link
  belongs_to :course
end

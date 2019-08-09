class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :classPlan, :enviromentSetting
  belongs_to :selective_process
end

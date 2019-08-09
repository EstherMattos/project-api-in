class SelectiveProcessSerializer < ActiveModel::Serializer
  attributes :id, :year, :schoolTerm, :startDate, :registrationDeadline, :finishDate
  has_many :courses
end

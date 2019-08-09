class Submission < ApplicationRecord
  belongs_to :subable, polymorphic: true
  enum status: [:delivered, :undeliverable]
  enum performance: [:exemplary, :pattern, :bad, :terrible]

  has_many :feedbacks, as: :feedble
end

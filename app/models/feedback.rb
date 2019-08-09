class Feedback < ApplicationRecord
  belongs_to :feedble, polymorphic: true
end

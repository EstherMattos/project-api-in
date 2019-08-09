class Activity < ApplicationRecord
  belongs_to :lession, optional: true
end

class Material < ApplicationRecord
    belongs_to :course, optional: true
    
end

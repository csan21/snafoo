class Vote < ApplicationRecord
  belongs_to :suggestion
  validates_presence_of :suggestion_id
end

class Suggestion < ApplicationRecord
  has_many :votes

  validates_presence_of :name, :purchase_location
  # suggestions cant be the same name regardless of letter casing
  validates :name, uniqueness: { case_sensitive: false }
end

class Suggestion < ApplicationRecord
  has_many :votes
  validates_presence_of :name, :location
  validates :name, uniqueness: { case_sensitive: false }

  # list of snacks that are always purchased
  def self.purchased_list
    Suggestion.all.select { |snack| snack[:optional] == false }
  end

  # list of snacks that are optional
  def self.optional_list
    Suggestion.all.select { |snack| snack[:optional] == true }
  end

  # list of snacks that are being voted on
  def self.voting_list
    Suggestion.all.select { |snack| snack[:being_voted] == true }
  end
end

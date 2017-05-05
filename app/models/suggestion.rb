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

  def self.dropdown_list
    Suggestion.all.select { |snack| snack[:being_voted] == false && snack[:optional] == true }
  end

  def self.collection_list
    dropdown_list.collect { |p| [ p.name, p.id ] }
  end
end

class Suggestion < ApplicationRecord

  validates_presence_of :name, :purchase_location
  validates :name, uniqueness: { case_sensitive: false }

  # list of snacks that are always purchased
  def self.purchased_list
    Suggestion.all.select { |snack| snack[:optional] == false }
  end

  # list of snacks that are newly suggested
  def self.suggested_list
    Suggestion.all.select { |snack| snack[:optional] == true }
  end

end

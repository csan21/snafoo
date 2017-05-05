class RemoveVoteCountFromSuggestions < ActiveRecord::Migration[5.0]
  def change
    remove_column :suggestions, :vote_count
  end
end

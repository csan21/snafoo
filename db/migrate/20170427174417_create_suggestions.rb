class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.string :name, null: false
      t.string :purchase_location, null: false
      t.integer :vote_count, default: 0, null: false
      t.boolean :optional, default: true, null: false
      t.boolean :being_voted, default: false, null: false

      t.timestamps
    end
  end
end

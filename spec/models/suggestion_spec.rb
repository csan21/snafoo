require 'rails_helper'

RSpec.describe Suggestion, type: :model do
  # for validations testing purposes
  let(:suggestion_no_name) { Suggestion.new(location: "Walgreens") }
  let(:suggestion_no_location) { Suggestion.new(name: "Bananas") }

  describe 'validations' do
    context 'will raise an error' do
      it 'when the name is empty' do
        suggestion_no_name.save
        expect(suggestion_no_name.errors[:name]).to include("can't be blank")
      end

      it 'when the location is empty' do
        suggestion_no_location.save
        expect(suggestion_no_location.errors[:location]).to include("can't be blank")
      end
    end
  end

end

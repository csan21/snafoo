require 'rails_helper'

RSpec.describe Vote, type: :model do

  let(:vote_no_id) { Vote.new }

  describe 'validations' do
    context 'will raise an error' do
      it 'if the vote has no suggestion id' do
        vote_no_id.save
        expect(vote_no_id.errors[:suggestion_id]).to include("can't be blank")
      end
    end
  end

end

require 'rails_helper'

RSpec.describe VotesController, type: :controller do

  describe 'homepage action' do

    it 'should load votes index as homepage' do
      get :index
      expect(response).to render_template(:index)
    end
  end

end

require 'rails_helper'

RSpec.describe SuggestionsController, type: :controller do

  describe 'homepage action' do

    it 'should load suggestions index as homepage' do
      get :index
      expect(response).to render_template(:index)
    end
  end

end

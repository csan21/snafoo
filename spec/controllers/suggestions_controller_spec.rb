require 'rails_helper'

RSpec.describe SuggestionsController, type: :controller do

  describe 'suggestions page' do

    it 'should load suggestions index page' do
      get :index
      expect(response).to render_template(:index)
    end
  end

end

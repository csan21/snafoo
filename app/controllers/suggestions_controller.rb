class SuggestionsController < ApplicationController
  include Snacks

  def index
    @suggestions = snacks_json
  end

end

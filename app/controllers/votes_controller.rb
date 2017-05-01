class VotesController < ApplicationController
  include Snacks

  def index
    @suggestions = snacks_json
  end

end

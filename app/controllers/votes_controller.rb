class VotesController < ApplicationController
  include Snacks

  def index
    purchased_list
    @suggestions = Suggestion.all
  end

  def create
  end

end

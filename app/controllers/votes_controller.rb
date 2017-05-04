class VotesController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def index
    set_session
    @purchased = Suggestion.purchased_list
    @suggested = Suggestion.voting_list
  end
end

class VotesController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def index
    set_session
    @purchased = Suggestion.purchased_list
    @suggested = Suggestion.suggested_list
  end

  def create
    @snack = Suggestion.find(params[:id])

    if duplicate_vote_check?(@snack) && session[:votes] > 0
      @snack.vote_count += 1
      session[:votes] -= 1
      session[:voted_for].push(@snack.name)
    end

    redirect_to root
  end

end

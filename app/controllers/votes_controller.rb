class VotesController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def index
    set_session
    @purchased = Suggestion.purchased_list
    @suggested = Suggestion.voting_list
  end

  # update vote count, no longer creating a vote object
  def create
    @snack = Suggestion.find(params[:id])

    if duplicate_vote_check?(@snack) && session[:votes] > 0
      @snack.update_attribute(:vote_count, 1)
      session[:votes] -= 1
      session[:voted_for].push(@snack.name)
      redirect_to root_path
    else
      cookies[:vote_error] = "Voting Error"
      render :index
    end
  end
end

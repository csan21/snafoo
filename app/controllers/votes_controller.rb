class VotesController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def index
    set_session # does not overwrite itself unless sessions are cleared
    @purchased = Suggestion.purchased_list
    @suggested = Suggestion.voting_list
  end

  def create
    @snack = Suggestion.find(params[:id])
    @vote = Vote.new(suggestion_id: @snack.id)

    if !duplicate_vote_check?(@snack.name) && session[:votes] > 0
      @vote.save
      session[:votes] -= 1
      session[:voted_for].push(@snack.name)
      redirect_to root_path
    elsif session[:votes] == 0
      flash[:vote_error] = "You're out of votes for the month"
      redirect_to :back
    else
      flash[:vote_error] = "Can't vote on this snack again"
      redirect_to :back #deprecation warning for 5.1
    end
  end
end

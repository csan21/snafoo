class SuggestionsController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def index
  end

  def create
  end

  # update vote count, no longer creating a vote object
  def update
    @snack = Suggestion.find(params[:id])

    if duplicate_vote_check?(@snack) && session[:votes] > 0
      @snack.vote_count += 1
      session[:votes] -= 1
      session[:voted_for].push(@snack.name)
    end

    redirect_to root_path
  end

end

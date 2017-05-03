class SuggestionsController < ApplicationController
  include Snacks

  def index
  end

  def update
    # @item = Suggestion.find(params[:id])
    # @item.vote_count += = 1
    #
    # if session[:user_info][:vote_count] > 0
    #   session[:user_info][:vote_count] -= 1
    #   session[:user_info][:voted_items].push(@item.name)
    # end
    #
    # redirect_to root
  end


  def create
  end

end

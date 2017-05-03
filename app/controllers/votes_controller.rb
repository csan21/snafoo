class VotesController < ApplicationController
  include Snacks

  def index
    # first connection
    # if !session[:user_info]
    #   session[:user_info] = {
    #     vote_counts: 3,
    #     voted_items:[],
    #     suggested_item: ""
    #   }
    # else
    #   if new_month?
    #     session[:user_info] = {
    #       vote_counts: 3,
    #       voted_items:[],
    #       suggested_item: ""
    #     }
    #   end
    # end
    #
    # p session
    # sync_database
    @purchased = Suggestion.purchased_list
    @suggested = Suggestion.suggested_list
  end
end

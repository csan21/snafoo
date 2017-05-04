class SuggestionsController < ApplicationController
  include SessionsHelper
  include SnacksApi

  def new
    @dropdown_menu = Suggestion.dropdown_list
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)

    # sessions_helper method
    if suggestion_check? && @suggestion.valid?
      @suggestion.save
      session[:suggestion_count] -= 1
      session[:suggested_item].push(@suggestion)
      redirect_to root_path
    elsif !suggestion_check?
      flash[:suggestion_error] = "You already made a suggestion"
      redirect_to :back
    else
      @errors = @suggestion.errors.full_messages
      redirect_to :back
    end
  end

  private

    def suggestion_params
      params.require(:suggestion).permit(:name, :location, :being_voted)
    end
end

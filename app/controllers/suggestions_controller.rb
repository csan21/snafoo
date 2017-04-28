class SuggestionsController < ApplicationController

  def index
    p '*' * 10
    p session[:current_user_id]
    p '*' * 10
  end

end

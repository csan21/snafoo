module SessionsHelper

  # set default for custom attributes for rails' built in session/cookie store.
  def set_session
    session[:votes] ||= 3
    session[:voted_for] ||= []
    session[:suggested_item] ||= ""
  end

  # checks to see if you already voted on the snack item
  def duplicate_vote_check?(snack_item)
    return false if session[:voted_for].include? snack_item
  end

  # checks to see if you already made a suggestion
  def suggestion_check?(snack_item)
    return false if session[:suggested_item].exists?
  end

end

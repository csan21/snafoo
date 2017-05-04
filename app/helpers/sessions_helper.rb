module SessionsHelper
# opted to use a module so I could use these methods in controllers AND views

  # set default for custom attributes for rails' built in session/cookie store.
  def set_session
    session[:votes] ||= 3
    session[:voted_for] ||= []
    session[:suggestion_count] ||= 1
    session[:suggested_item] ||= []
  end

  # checks to see if you already voted on the snack item
  def duplicate_vote_check?(snack_item)
    session[:voted_for].include?(snack_item)
  end

  # checks to see if you already made a suggestion
  def suggestion_check?
    session[:suggested_item].empty?
  end
end

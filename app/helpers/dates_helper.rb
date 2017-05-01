module DatesHelper
  # boolean check to see if its a new month, used for resetting votes and suggestions
  def new_month?
    Date.today == Date.today.at_beginning_of_month
  end

end

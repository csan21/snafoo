require 'rest-client'
require 'json'

# API calls to the nerdery snack list, and data parsing
module Snacks

  # parses snack list from api
  def snack_list
    JSON.parse(RestClient.get ENV['NERDERY_API'])
  end

  # list of snacks that are always purchased
  # def purchased_list
  #   @purchased = snack_list.select { |snack| snack["optional"] == false }
  # end

  # list of suggested snacks # current api list has no snacks that are optional: true, this list will work when data is persisted to the api
  # def suggested_list
  #   @suggested = snack_list.select { |snack| snack["optional"] == true }
  # end

  # boolean check to see if snack is already in the api list
  def snack_checker?(snack_name)
    return true if snack_list.detect { |snack| snack["name"].downcase == snack_name.downcase }
  end

end

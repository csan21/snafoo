require 'rest-client'
require 'json'

# API calls to the nerdery snack list, and data parsing
module Snacks

  # parses snack list from api
  def parse_list
    JSON.parse(RestClient.get ENV['NERDERY_API'])
  end

  # syncs api list to database
  def sync_database
    snacks = parse_list

    snacks.each do |snack|
      Suggestion.create(name: snack['name'], purchase_location: snack['purchaseLocations'])
    end
  end

  # boolean check to see if snack is already in the api list
  def snack_checker?(snack_name)
    return true if parse_list.detect { |snack| snack["name"].downcase == snack_name.downcase }
  end

end

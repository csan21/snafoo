require 'rest-client'
require 'json'

# API calls to the nerdery snack list, and data parsing
module SnacksApi

  # parses snack list from api
  def api_parse_list
    JSON.parse(RestClient.get ENV['NERDERY_API'])
  end

  # sends json data to api
  def data_to_api(snack_name, snack_location, snack_optional)
    RestClient.post ENV['NERDERY_API'], { name: snack_name,
                                          location: snack_location,
                                          optional: snack_optional
                                        }.to_json, content_type: :json
  end

  # syncs api list to database
  def api_sync_database
    snacks = api_parse_list

    snacks.each do |snack|
      Suggestion.create(name: snack['name'],
                        location: snack['purchaseLocations'],
                        optional: snack['optional'])
    end
  end

  # boolean check to see if snack is already in the api list
  def api_snack_checker?(snack_name)
    return true if api_parse_list.detect { |snack| snack["name"].downcase == snack_name.downcase }
  end

  # syncs database to api, and checks for duplicate names to prevent redundancy
  def database_sync_api
    snacks = Suggestion.all

    snacks.each do |snack|
      if !api_snack_checker?(snack.name)
        data_to_api(snack.name, snack.location, snack.optional)
      end
    end
  end
end

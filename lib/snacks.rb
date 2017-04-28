require 'rest-client'
require 'json'

# API calls to the nerdery snack list, and data parsing
module Snacks

  def snacks_json
    JSON.parse(RestClient.get ENV['NERDERY_API'])
  end

end

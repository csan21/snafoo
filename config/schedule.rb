every 1.month, at '0am' do
  runner "Suggestion.update_all("being_voted = false")"
  runner "session.clear"
  runner "api_sync_database"
  runner "database_sync_api"
end

# still not entirely familiar with the Whenever GEM for cronjobs
# but i can see its benefits for deployments.
# this would reset sessions, take the snacks off the current voting list,
# and resync the api & database together.

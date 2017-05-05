## Chris Santos Personal Notes

# HOW TO SET UP
- db:create / migrate
- uncomment *api_sync_database* method in votes controller index
- load page and let api list sync to database
- comment out/remove *api_sync_database* from votes controller index
- db:seed for a little more dummy data


## Goals
- try to keep everything as clean as possible
- RESTful
- prevent redundancy (DRY)
- some testing

## My Choices & Reasons
- opted to use only the suggestions and votes model based on the (semi-vague?) specifications
- simple snack api *module* in the /lib (still not sure of BEST practice for that vs class etc)
- decided to use my own sessions helper methods to keep track of "users" and vote/suggestion limits
- i didnt want the site to be so reliant on the api
  - i opted to pull that data from the api and persist to the db
  - i looked into Whatever gem for monthly cron jobs
    - like resetting the sessions, suggestions, and resyncing the db to api & vice versa


## Whats Not Working & Problems I ran into
- had issues with the drop down menu form_for to update a single attribute from the select
  - update: couldnt sleep and got it working, YES!
- didnt timebox myself enough, probably lost a few hours to rabbit holing
- pivoted twice
- would have taken more time to finish everything out, but didnt want to submit too late

## What I learned
- need to work on rails style form manipulation
- learned a lot about rails built in session and cookie store
- understanding interacting API's better
- better understanding how rails routes in comparison to sinatra
- a few new tools to use


Any advice, critiques, and criticisms are welcome.
I'm always interested in learning new and better ways to do things.

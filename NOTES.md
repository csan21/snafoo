## Chris Santos Personal Notes


## Goals
- try to keep everything as clean as possible
- RESTful
- prevent redundancy (DRY)
- some testing

## My Choices & Reasons
- opted to use only the suggestions and votes model based on the (semi-vague?) specifications
- simple snack api *module* in the /lib (still not sure of BEST practice for that vs class etc)
- decided to use my own sessions helper methods to keep track of "users" and data limits
- i didnt want the site to be so reliant on the api
  - i opted to pull that data from the api and persist to the db
  - i looked into Whatever gem for monthly jobs
    - like resetting the sessions, suggestions, and resyncing the db to api & vice versa


## Whats Not Working & Problems I ran into
- had issues with the drop down menu form_for to update a single attribute from the select
- didnt timebox myself enough, probably lost a few hours to rabbit holing
- pivoted twice
- would have taken more time to finish everything out, but didnt want to submit too late

## What I learned
- need to work on rails style form manipulation (still more comfy with sinatra)
- learned a lot about rails built in session and cookie store
- understanding interacting API's better
- a few new tools to use


Any advice, critiques, and criticisms are welcome.

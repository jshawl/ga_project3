# ga_project3

ideas:
- parking garage
- prediction game
- happy hour finder
- brunch finder**
- coupon/discount keeper
- roommate expenses
- grocery shopping/recipe
- travel comparison (flights to trains)
- renter's insurance finder
- weather
- content curation
- explore Kansas City
- emoji names

**After polling friends and doing further research, I decided on the idea for a brunch finder app. I chose this idea for several reasons:

- solves a current problem (albeit a 'first world problem'): every weekend without fail, my friends and I have a tough time deciding where to go to brunch. With this app, we can simply choose a neighborhood/enter a zip code, and have the choice made for us!
- allows for new discovery: I've been interested in trying out the Yelp API for some time, so decided to use it for this app! My also have to learn how to use OAuth which I've seen a few times...
- meets project requirements: I will build a Rails app with fun Javascript features (something like a wheel-of-fortune or shake feature) that utilize a semi-complex API while implementing CRUD functionality for users (they can create, read, update and delete their 'favorite places' that get generated)

Brunchinator App Overview:
The Brunchinator uses the Yelp API to display randomly generated brunch spots wherever a user specifies, either by zip code or city/state. A user can view Yelp information about each restaurant, clicking 'FIND ME BRUNCH' to view even more options. This app is similar to the 'shake' feature from UrbanSpoon, but is enhanced with information from Yelp.

For a list of User Stories, visit: https://trello.com/b/QLUZH3ey/brunchinator

To view this app in action, visit: https://brunchinator.herokuapp.com/

To use this app locally:

1. Git clone git@github.com:hharper/ga_project3.git
2. Setup the rails app:
  - bundle install
  - rake db:create
  - rake db:migrate
  - rails s
  - Open up http://localhost:3000/ to view the app

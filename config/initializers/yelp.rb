require 'yelp'
#
Yelp.client.configure do |config|
  config.consumer_key = ENV['yelp_consumer_key']
  config.consumer_secret = ENV['yelp_consumer_secret']
  config.token = ENV['yelp_token']
  config.token_secret = ENV['yelp_token_secret']
end



# #Yelp.client.search('San Francisco', { term: 'food' })
# Yelp.client.search('DC', { category_filter: 'breakfast_brunch', limit: 1 })


#breakfast_brunch, All

#category_filter:
#Breakfast & Brunch (breakfast_brunch, All)

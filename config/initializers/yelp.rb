require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = w85YKcwND0KvCIXbLljLvA
  config.consumer_secret = CIDc1U3UHnGsWWdQi03q2yURMLQ
  config.token = M0J-o0Sgzaz_8C8sLFT1YTcmzG_PLKDO
  config.token_secret = 8rKT43UomKp-qPpIdHSgmUPjcKY
end

#Yelp.client.search('San Francisco', { term: 'food' })
Yelp.client.search('DC', { category_filter: 'breakfast_brunch', limit: 1 })


#breakfast_brunch, All

#category_filter:
#Breakfast & Brunch (breakfast_brunch, All)

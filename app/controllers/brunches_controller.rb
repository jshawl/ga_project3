require 'yelp'
class BrunchesController < ApplicationController

	def index
	end

	def search
    #@brunch_search = Yelp.client.search('DC', { category_filter: 'breakfast_brunch', limit: 1 })
		# would rather use neighborhood than zipcode here...
		location = params[:location]
	  parameters = { category_filter: 'breakfast_brunch' }
    @brunch_search = Yelp.client.search( location, parameters )
		@brunch = @brunch_search.businesses.sample
		
		@favorite = Favorite.new(name: @brunch.name, url: @brunch.url, rating: @brunch.rating_img_url_large, reviews: @brunch.review_count, address: @brunch.location.display_address, phone: @brunch.display_phone)
	end

end

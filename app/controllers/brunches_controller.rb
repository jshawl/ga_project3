require 'yelp'
class BrunchesController < ApplicationController

	def index
	end

	def search

    #@brunch_search = Yelp.client.search('DC', { category_filter: 'breakfast_brunch', limit: 1 })

		# would rather use neighborhood than zipcode here...
		location = params[:location]

	  parameters = { category_filter: 'breakfast_brunch', limit: 10 }
    @brunch_search = Yelp.client.search( location, parameters )
		@brunch = @brunch_search.businesses.sample
		
    # render json: @brunch
	end

end

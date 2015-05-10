require 'yelp'
class BrunchesController < ApplicationController

	def index
	end

	def search

    #@brunch_search = Yelp.client.search('DC', { category_filter: 'breakfast_brunch', limit: 1 })

    location = params[:location]
	  parameters = { category_filter: 'breakfast_brunch', limit: 10 }
    @brunch_search = Yelp.client.search( location, parameters )
    render json: @brunch_search
	end

end

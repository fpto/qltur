class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end
	def show 
  		@venue = Venue.find(params[:id]) 
  		@concerts = @venue.concerts 
  		@cleanAddress1 = @venue.address1.gsub(' ','+')
  		@cleanPostalcode = @venue.postal_code.gsub(' ','+')
  		@cleanCity = @venue.city.gsub(' ','+')
  		@cleanCountry = @venue.country.gsub(' ','+')
	end
end

class VenuesController < ApplicationController
	def index
		@venues = Venue.all
	end

  def new
      @venue = Venue.new 
  end

  def create 
      @venue = Venue.new(venue_params) 
      if @venue.save 
        redirect_to '/venues' 
      else 
        render 'new' 
      end 
  end
  
  def show 
      @venue = Venue.find(params[:id]) 
      @concerts = @venue.concerts 
      @cleanAddress1 = @venue.address1.gsub(' ','+')
      @cleanPostalcode = @venue.postal_code.gsub(' ','+')
      @cleanCity = @venue.city.gsub(' ','+')
      @cleanCountry = @venue.country.gsub(' ','+')
  end

  
  private 
    def venue_params 
      params.require(:venue).permit(:name, :phone, :email, :website, :facebook, :address1, :address2, :city, :postal_code, :state, :country, :cover_image, :description) 
    end
end
   

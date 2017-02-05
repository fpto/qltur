class VenuesController < ApplicationController
before_action :require_user, only: [:index, :show, :new]
before_action :require_editor, only: [:edit]
before_action :require_admin, only: [:destroy]
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

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to root_url
  end 
  
  private 
    def venue_params 
      params.require(:venue).permit(:name, :phone, :email, :website, :facebook, :address1, :address2, :city, :postal_code, :state, :country, :cover_image, :description) 
    end
end
   

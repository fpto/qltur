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
			future_range = (DateTime.now..(DateTime.now + 365.days))
	    @futureConcerts = (@concerts.select{|concert| future_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
	    last_year_range = ((DateTime.now - 365.days)..DateTime.now)
	    @lastYearConcerts = (@concerts.select{|concert| last_year_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
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

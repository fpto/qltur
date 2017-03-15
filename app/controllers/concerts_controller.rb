class ConcertsController < ApplicationController
	before_action :require_user, only: [:index, :show]
	before_action :require_editor, only: [:edit, :update]
	before_action :require_admin, only: [:destroy]
	def index
		@concerts = Concert.all
		future_range = ((DateTime.now-1.days)..(DateTime.now + 365.days))
    @futureConcerts = (@concerts.select{|concert| future_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
    last_year_range = ((DateTime.now - 365.days)..(DateTime.now-1.days))
    @lastYearConcerts = (@concerts.select{|concert| last_year_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
		#SEO
		@meta_title = meta_title 'All Gigs'
		@meta_description = 'Find live music in the hidden venues of Berlin. Rock, punk, funk and no junk! From Hipster Friedrichschain to fancy Mitte.'
	end

	def new
  		@concert = Concert.new
	end
	def create
		@concert = Concert.new(concert_params)
		if @concert.save
  		redirect_to '/concerts'
		else
  		render 'new'
		end
	end
  def show
		@concert = Concert.friendly.find(params[:id])
    @venue = @concert.venue
		#SEO
		@meta_title = meta_title @concert.title
		@meta_description = @concert.description
		# Cleaninf Address for the Google Map TODO refactor into an object
    @cleanAddress1 = @venue.address1.gsub(' ','+')
    @cleanPostalcode = @venue.postal_code.gsub(' ','+')
    @cleanCity = @venue.city.gsub(' ','+')
    @cleanCountry = @venue.country.gsub(' ','+')

		#saves users coming to this concert
		@concerts = Concert.friendly.find(params[:id])
		@attendees = @concerts.users
		#creates attendee for I'm coming function
		@attendee = Attendee.new
		#Checking if current_user is attending
		if @attendees.include? current_user
			@is_attending = true
		else
			@is_attending = false
		end
  end
  def edit
    @concert = Concert.friendly.find(params[:id])
  end
  def update
  	@concert = Concert.friendly.find(params[:id])
    if @concert.update(concert_params)
      redirect_to @concert
    else
      render 'edit'
  end
  end
  def destroy
    @concert = Concert.friendly.find(params[:id])
    @concert.destroy
    redirect_to root_url
  end

	private
  	def concert_params
    	params.require(:concert).permit(:title, :time, :date, :band, :description, :image_url, :venue_id)
  	end
end

class ConcertsController < ApplicationController
before_action :require_user, only: [:index, :show]
before_action :require_editor, only: [:edit, :update]
before_action :require_admin, only: [:destroy]
	def index
		@concerts = Concert.all
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
      @concert = Concert.find(params[:id]) 
      @venue = @concert.venue
      @cleanAddress1 = @venue.address1.gsub(' ','+')
      @cleanPostalcode = @venue.postal_code.gsub(' ','+')
      @cleanCity = @venue.city.gsub(' ','+')
      @cleanCountry = @venue.country.gsub(' ','+')
  end
  def edit 
    @concert = Concert.find(params[:id]) 
  end
    def update
    @concert = Concert.find(params[:id])
      if @concert.update(concert_params)
        redirect_to @concert
      else
        render 'edit'
      end
  end
  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    redirect_to root_url
  end 
	
	private 
  	def concert_params 
    	params.require(:concert).permit(:title, :time, :date, :band, :description, :image_url, :venue_id) 
  	end
end

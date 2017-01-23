class ConcertsController < ApplicationController
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
  end
	
	private 
  	def concert_params 
    	params.require(:concert).permit(:title, :time, :date, :band, :description, :image_url, :venue_id) 
  	end
end

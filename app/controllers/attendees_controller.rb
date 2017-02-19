class AttendeesController < ApplicationController

  def create
      @attendee = Attendee.new(attendee_params)
      if @attendee.save
        redirect_to '/concerts'
      else
        render '/'
      end
  end
  private
    def attendee_params
      params.require(:attendee).permit(:user_id, :concert_id, :response)
    end
end

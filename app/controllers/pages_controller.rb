class PagesController < ApplicationController
	def home
		#Saving all concerts in thisWeekConcerts to be displayed in the home
		@concerts = Concert.all
		range = (DateTime.now..(DateTime.now + 6.days))
		@thisWeekConcerts = @concerts.select{|concert| range.cover?(concert.date)}
	end
	def imprint
	end
end

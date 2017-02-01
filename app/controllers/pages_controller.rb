class PagesController < ApplicationController
	def home
		@concerts = Concert.all
		range = (DateTime.now..(DateTime.now + 7.days))
		@thisWeekConcerts = @concerts.select{|concert| range.cover?(concert.date)}
	end
end

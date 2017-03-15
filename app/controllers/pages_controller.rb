class PagesController < ApplicationController
	def home
		#Saving all concerts in thisWeekConcerts to be displayed in the home
		@concerts = Concert.all
		range = ((DateTime.now-1.days)..(DateTime.now + 7.days))
		@thisWeekConcerts = (@concerts.select{|concert| range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
		#SEO
		@meta_title = meta_title 'Live Indie Music in Berlin'
		@meta_description = ‘Find live music in the hidden venues of Berlin. Rock, punk, funk and no junk! From Hipster Friedrichschain to fancy Mitte.’
	end
	def imprint
		@meta_title = meta_title 'Imprint'
		@meta_description = 'If you want to say hi'
	end
end

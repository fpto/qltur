class Concert < ActiveRecord::Base
	belongs_to :venue
	has_many :attendees
	has_many :users, through: :attendees
end

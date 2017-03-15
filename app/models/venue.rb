class Venue < ActiveRecord::Base
	has_many :concerts
	extend FriendlyId
  friendly_id :name, use: :slugged
end

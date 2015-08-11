class Place < ActiveRecord::Base

	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates :trip_id, presence: true
end

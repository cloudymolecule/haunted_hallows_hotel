class Room < ApplicationRecord
    belongs_to :hotel
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :hauntings
end

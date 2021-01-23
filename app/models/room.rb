class Room < ApplicationRecord
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :hauntings
    has_many :comments
end

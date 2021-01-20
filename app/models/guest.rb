class Guest < ApplicationRecord
    has_many :bookings
    has_many :hauntings
    has_many :rooms, through: :bookings

end

class Guest < ApplicationRecord
    has_many :bookings
    has_many :hauntings
    has_many :visitor_logs
    has_many :rooms, through: :bookings
    has_secure_password
    validates :nickname, :full_name, :age, :gender, :password, presence: true

end

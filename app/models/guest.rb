class Guest < ApplicationRecord
    has_many :bookings
    has_many :hauntings
    has_many :comments, through: :guests_comments
    has_many :rooms, through: :bookings
    validates :nickname, :full_name, :age, :gender, :password, presence: true
    has_secure_password
    
end

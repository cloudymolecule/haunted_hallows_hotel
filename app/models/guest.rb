class Guest < ApplicationRecord
    has_many :bookings
    has_many :hauntings
    has_many :comments
    has_many :rooms, through: :bookings
    validates :username, :email, :age, :gender, :password, presence: true
    has_secure_password

end

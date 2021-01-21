class Hotel < ApplicationRecord
    has_many :rooms
    has_many :visitor_logs
end

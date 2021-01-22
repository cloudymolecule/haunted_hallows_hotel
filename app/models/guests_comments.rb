class GuestComments < ApplicationRecord
    belongs_to :guest
    belongs_to :comment
end

class Board < ApplicationRecord
    belongs_to :comment
    belongs_to :room
end

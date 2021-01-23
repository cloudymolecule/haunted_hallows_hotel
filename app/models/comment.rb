class Comment < ApplicationRecord
    belongs_to :guest, required: false
    belongs_to :board, required: false
end

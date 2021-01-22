class Comment < ApplicationRecord
    has_one :guest, through: :guests_comments
end

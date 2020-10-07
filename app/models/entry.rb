class Entry < ApplicationRecord
    belongs_to :journal
    belongs_to :meal
end

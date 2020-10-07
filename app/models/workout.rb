class Workout < ApplicationRecord
    belongs_to :exercise
    belongs_to :journal
end

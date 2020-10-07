class Exercise < ApplicationRecord
    has_many :workouts
    has_many :journals, through: :workouts
end

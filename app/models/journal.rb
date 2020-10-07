class Journal < ApplicationRecord
    belongs_to :user
    has_many :entries
    has_many :meals, through: :entries
    has_many :workouts
    has_many :exercises, through: :workouts
end

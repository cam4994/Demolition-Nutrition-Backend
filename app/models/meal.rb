class Meal < ApplicationRecord
    belongs_to :user, optional: true
    has_many :entries
    has_many :journals, through: :entries
end

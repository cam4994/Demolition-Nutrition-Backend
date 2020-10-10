class Journal < ApplicationRecord
    belongs_to :user
    has_many :entries
    has_many :meals, through: :entries
    has_many :workouts
    has_many :exercises, through: :workouts

    def entries_and_meals
        entries_and_meals = self.entries.map do |entry|
            {
                category: entry.category, 
                servings: entry.servings, 
                name: entry.meal.name, 
                calories: entry.meal.calories, 
                carbs: entry.meal.carbs, 
                protein: entry.meal.protein, 
                fat: entry.meal.fat
            }
        end
        return entries_and_meals
    end

end

class Food < ApplicationRecord
  has_many :food_pairings
  has_many :beers, through: :food_pairings
end

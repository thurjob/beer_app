class Beer < ApplicationRecord
  has_many :food_pairings
  has_and_belongs_to_many :pubs
end

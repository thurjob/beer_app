class CreateFoodPairings < ActiveRecord::Migration[7.2]
  def change
    create_table :food_pairings do |t|
      t.string :food_item

      t.timestamps
    end
  end
end

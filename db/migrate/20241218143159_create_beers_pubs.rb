class CreateBeersPubs < ActiveRecord::Migration[7.2]
  def change
    create_table :beers_pubs do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :pub, null: false, foreign_key: true

      t.timestamps
    end
  end
end

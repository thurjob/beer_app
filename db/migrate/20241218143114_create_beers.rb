class CreateBeers < ActiveRecord::Migration[7.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.float :alcohol_content
      t.string :style

      t.timestamps
    end
  end
end

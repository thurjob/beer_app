class CreatePubs < ActiveRecord::Migration[7.2]
  def change
    create_table :pubs do |t|
      t.string :name
      t.string :location
      t.string :opening_hours

      t.timestamps
    end
  end
end

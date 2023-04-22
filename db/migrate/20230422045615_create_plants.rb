class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.text :name
      t.text :species
      t.date :last_watered
      t.integer :cycle
      t.text :image

      t.timestamps
    end
  end
end

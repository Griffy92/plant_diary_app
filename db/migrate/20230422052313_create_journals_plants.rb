class CreateJournalsPlants < ActiveRecord::Migration[5.2]
	def change
		create_table :journals_plants, :id => false do |t|
			t.integer :plant_id
			t.integer :journal_id
		end
	end
end

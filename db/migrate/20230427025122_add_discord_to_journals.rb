class AddDiscordToJournals < ActiveRecord::Migration[5.2]
	def change
		add_column :journals, :discord, :text
	end
end

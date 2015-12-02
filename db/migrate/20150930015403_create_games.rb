class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
			t.string :title
			t.date :date_of_release
			t.integer :game_id			
      t.timestamps null: false
    end
  end
end

class CreatePlayergames < ActiveRecord::Migration
  def change
    create_table :playergames do |t|
			t.time :time_played
			t.datetime :last_time_played
			t.integer :rating
      t.timestamps null: false
    end
  end
end

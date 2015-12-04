class CreateSubreddits < ActiveRecord::Migration
  def change
    create_table :subreddits do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

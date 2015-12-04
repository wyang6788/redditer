class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :subreddit, index:true
      t.timestamps null: false
    end
  end
end

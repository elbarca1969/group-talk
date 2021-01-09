class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :tweet_id
      t.timestamps
      t.index [:user_id, :tweet_id], unique: true
    end
  end
end

class CreateTwitterContestants < ActiveRecord::Migration
  def change
    create_table :twitter_contestants do |t|
      t.string :tweet_id
      t.string :twitter_username
      t.text :tweet_content
      t.string :contest_id
      t.string :user_id

      t.timestamps
    end
  end
end

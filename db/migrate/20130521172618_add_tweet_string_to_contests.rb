class AddTweetStringToContests < ActiveRecord::Migration
  def change
  	add_column :contests, :tweet_string, :text
  end
end

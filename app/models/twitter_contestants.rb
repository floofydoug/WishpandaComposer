class TwitterContestants < ActiveRecord::Base
  attr_accessible :contest_id, :tweet_content, :tweet_id, :twitter_username, :user_id
end

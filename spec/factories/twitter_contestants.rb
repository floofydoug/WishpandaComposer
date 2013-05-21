# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :twitter_contestant, :class => 'TwitterContestants' do
    tweet_id "MyString"
    twitter_username "MyString"
    tweet_content "MyText"
    contest_id "MyString"
    user_id "MyString"
  end
end

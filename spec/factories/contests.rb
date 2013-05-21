# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contest do
    contest_name "MyString"
    user_id 1
    contest_description "MyText"
    contest_type 1
    contest_prize_image "MyText"
    contest_start_date "2013-05-15 15:29:12"
    contest_end_date "2013-05-15 15:29:12"
    contest_id ""
  end
end

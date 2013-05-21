class Contest < ActiveRecord::Base
  attr_accessible :contest_description, :contest_end_date, :contest_id, :contest_name, :contest_prize_image, :contest_start_date, :contest_type, :user_id
end

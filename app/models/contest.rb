class Contest < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date
  attr_accessible :image

  
end
class Contest < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date
  attr_accessible :image

  # Image
  # The hashtag at the end of the sizes maintains proportions
  has_attached_file :image,
                    :styles => { :normal => "100x100#", :thumbnail => "30x30#" },
                    :url  => "/assets/contests/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/contests/:id/:style/:basename.:extension"
  
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end

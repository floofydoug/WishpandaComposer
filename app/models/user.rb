class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :username, :password_confirmation, :remember_me, :picture, :twitter_picture, :avatar
  has_attached_file :avatar, :styles => { :small => "150x150>" },
  					:url => "/assets/images/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_create do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.username = auth.info.nickname
    user.name =auth.info.name
    #user.picture = auth.info.image.sub("_normal", "")
    user.twitter_picture = auth.info.image
  end
end

def self.new_with_session(params, session)
  if session["devise.user_attributes"]
    new(session["devise.user_attributes"], without_protection: true) do |user|
      user.attributes = params
      user.valid?
    end
  else
    super
  end
end

def password_required?
  super && provider.blank?
end

def email_required?
  super && provider.blank?
end

def update_with_password(params, *options)
  if encrypted_password.blank?
    update_attributes(params, *options)
  else
    super
  end
 end 

#  def update_without_password(params={})
#   params.delete(:current_password)
#   super(params)
# end
end

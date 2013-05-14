class AddTwitterPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter_picture, :string
  end
end

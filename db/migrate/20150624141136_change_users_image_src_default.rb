class ChangeUsersImageSrcDefault < ActiveRecord::Migration
  def change
  	change_column :users, :image_src, :string, :default => "https://www.leanstartupmachine.com/images/default_profile_photo.png"
  end
end

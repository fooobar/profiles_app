class RenameColumnUserType < ActiveRecord::Migration
  def up
  	rename_column(:users, :user_type, :type)
  end
end

class ChangeClickedInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :clicked, :integer, :default => 0
  end
end

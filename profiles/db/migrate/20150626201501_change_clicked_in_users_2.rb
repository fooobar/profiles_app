class ChangeClickedInUsers2 < ActiveRecord::Migration
  def change
  	change_column :users, :clicked, :string, :default => '0'
  end
end

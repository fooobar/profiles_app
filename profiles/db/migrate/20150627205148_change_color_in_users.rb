class ChangeColorInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :color, :string, :default => '#E3E3E3'
  end
end

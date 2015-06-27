class AddClickedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :clicked, :integer, :defaut => 0
  end
end

class AddClickedToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :clicked, :integer, :default => 0
  end
end

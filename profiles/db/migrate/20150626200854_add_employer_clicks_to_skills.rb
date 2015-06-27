class AddEmployerClicksToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :employer_clicks, :integer, :default => 0
  end
end

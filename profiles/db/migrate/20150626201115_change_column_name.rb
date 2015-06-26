class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :skills, :clicked, :student_clicks
  end
end

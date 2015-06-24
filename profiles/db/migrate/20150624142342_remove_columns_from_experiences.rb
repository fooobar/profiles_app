class RemoveColumnsFromExperiences < ActiveRecord::Migration
  def change
  	remove_column :experiences, :resp_1
  	remove_column :experiences, :resp_2
  	remove_column :experiences, :resp_3
  	remove_column :experiences, :resp_4
  	remove_column :experiences, :resp_5
  	add_column :experiences, :blurb, :text
  	change_column :experiences, :start_date, :date, null: false
  	change_column :experiences, :end_date, :date, null: false
  end
end

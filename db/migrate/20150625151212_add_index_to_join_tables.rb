class AddIndexToJoinTables < ActiveRecord::Migration
  def change
  	add_index :skills_users, [:user_id, :skill_id], :unique => true
  	add_index :jobs_skills, [:job_id, :skill_id], :unique => true
  end
end

class RenameSkillsUsersTable < ActiveRecord::Migration
  def self.up
  	rename_table :skills_users, :user_skills
  end
end

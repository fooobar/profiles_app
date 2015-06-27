class RenameUserSkills < ActiveRecord::Migration
  def self.up
  	rename_table  :user_skills, :skills_users
  end
end

class CreateJobsSkills < ActiveRecord::Migration
  def change
    create_table :jobs_skills do |t|

    	t.integer :job_id, null: false
    	t.integer :skill_id, null: false

    end
  end
end

class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

    	t.string :title, null: false
    	t.string :desc, null: false
    	t.integer :user_id, null: false
    	t.timestamps
    	
    end
  end
end

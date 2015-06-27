class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|

    	t.string :company_name, null: false
    	t.string :company_website
    	t.string :city
    	t.string :state
    	t.date :start_date
    	t.date :end_date
    	t.string :role, null: false
    	t.string :resp_1
    	t.string :resp_2
    	t.string :resp_3
    	t.string :resp_4
    	t.string :resp_5
    	t.integer :user_id, null: false
    	t.timestamps

    end
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

    	t.string :title, null: false
    	t.string :desc, null: false
    	t.string :website
    	t.string :image_src
    	t.integer :user_id, null: false
    	t.timestamps

    end
  end
end

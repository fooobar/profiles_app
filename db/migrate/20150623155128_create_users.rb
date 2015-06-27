class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string :f_name
    	t.string :l_name
    	t.string :org_name
    	t.string :email, null: false, uniqueness: true
    	t.string :password_digest, null: false
    	t.string :user_type, null: false
    	t.string :image_src
    	t.string :phone
    	t.string :city
    	t.string :state
    	t.string :website
    	t.string :github
    	t.string :twitter
    	t.string :linkedin
    	t.string :behance
    	t.text :bio
    	t.timestamps

    end
  end
end

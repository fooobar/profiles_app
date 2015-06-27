class AddParamToSkills < ActiveRecord::Migration
  def up
    add_column :skills, :param, :string
    Skill.all.each do |skill|
    	skill.save
    end
  end

  def down
  	remove_column :skills, :param
  end
end

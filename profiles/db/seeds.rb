# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user_jeremy = User.new([{f_name: 'Jeremy'}, {l_name: 'Bell'}, {email: 'jeremyianbell@gmail.com'}, {password: 'melville1'}, {type: 'student'}
	])
user_jeremy.save

user_karlyce = User.new([{f_name: 'Karlyce'}, {l_name: 'Edwards'}, {email: 'karlyce.edwards@gmail.com'}, {password: 'melville1'}, {type: 'student'}
	])
user_karlyce.save


user_gordon = User.new([{f_name: 'Gordon'}, {l_name: 'DuGan'}, {email: 'gordon.dugan2@gmail.com'}, {password: 'melville1'}, {type: 'student'}
	])
user_gordon.save


user_fernanda = User.new([{f_name: 'Fernanda'}, {l_name: 'Correa'}, {email: 'nandasc@gmail.com'}, {password: 'melville1'}, {type: 'student'}
	])
user_fernanda.save

user_drew = User.new([{f_name: 'Drew'}, {l_name: 'Garver'}, {email: 'a.w.garver@gmail.com'}, {password: 'melville1'}, {type: 'student'}
	])
user_drew.save



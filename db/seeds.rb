# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
account = Account.create({name:"Initial Test Account"})

role_lock = [
    {:name=>"Account", :items=>[{:name=>"Roles", :uri=>"/list/role"},{:name=>"Users", :uri=>"/list/user"}]},
    {:name=>"Prospects", :items=>[{:name=>"Prospect", :uri=>"/list/prospect"}]}, 
    
  ]

role = Role.create({account: account, name: "tech", code: "tech", lock: role_lock})
User.create({ account: account, role: role,  login: "a", password: "a"})
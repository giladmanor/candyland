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

AgeGroup.create({name:"Under 18"})
AgeGroup.create({name:"18-25"})
AgeGroup.create({name:"26-35"})
AgeGroup.create({name:"36-45"})
AgeGroup.create({name:"46-65"})
AgeGroup.create({name:"Old geezer (65+)"})


Gender.create({name:"Male"})
Gender.create({name:"Female"})
Gender.create({name:"Camp"})
Gender.create({name:"Quear"})
Gender.create({name:"Dike"})
Gender.create({name:"Undefined"})


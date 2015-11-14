# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.create(name: 'Emanuel', description: 'desc', price: 10)
Item.create(name: 'Something', description: 'desc', price: 2)
Item.create(name: 'Something else', description: 'desc', price: 10.5)
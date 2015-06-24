# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# jose = User.create(name: 'Jose', email: 'test@example.com')

Flat.create(title: 'Sunshine', description: 'beautiful sunny appartment', price: 300, street: '25 r musc', zipcode: 75004, city: 'Paris', user_id: '')
Flat.create(title: 'Joliet', description: 'nice duplex', price: 500, street: '10 r Dumas', zipcode: 75018, city: 'Paris', user_id: '')
Flat.create(title: 'Marmara', description: 'home sweet home', price: 200, street: '77 av Namur', zipcode: 35000, city: 'Rennes', user_id: '')

# Booking.create(check_in: 2015/03/18, check_out: 2015/04/12, accepted: true, user_id: , flat_id: 1)

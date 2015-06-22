# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username:"test", email:"test@test.com", password:"dog", password_confirmation:"dog")
User.create(username:"roboto", email: "mr@roboto.com", password:"dog", password_confirmation:"dog")
User.create(username:"dog", email:"dog@dog.dog", password:"dog", password_confirmation: "dog")
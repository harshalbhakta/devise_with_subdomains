# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
App.delete_all

bruce_wayne = User.create!(name: "Bruce Wayne", email: "bruce@wayneenterprises.com", password: "rachel")
wayne_enterprises = App.create!(name: "Wayne Enterprises", owner_id: bruce_wayne.id)

tony_stark = User.create!(name: "Tony Stark", email: "tony@starkindustries.com", password: "pepper")
stark_industries = App.create!(name: "Stark Industries", owner_id: tony_stark.id)

alfred = AppUser.create!(name: "Alfred", email: "alfred@wayneenterprises.com", password: "batman", app_id: wayne_enterprises.id)
hogan = AppUser.create!(name: "Hogan", email: "hogan@starkindustries.com", password: "ironman", app_id: stark_industries.id)
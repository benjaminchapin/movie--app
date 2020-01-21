# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new({first_name: "Paul", last_name: "Rudd", known_for: "Antman"})
actor.save

actor = Actor.new({first_name: "Wesley", last_name: "Snipes", known_for: "Demolition Man"})
actor.save

actor = Actor.new({first_name: "Will", last_name: "Ferrell", known_for: "Anchorman"})
actor.save

actor = Actor.new({first_name: "Nicholas", last_name: "Cage", known_for: "National Treasure"})
actor.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.create(first_name: "Will", last_name: "Ferrell", gender: "male", age: "52", known_for: "Stepbrothers", movie_id: 1)
actor.save

actor = Actor.create(first_name: "Arnold", last_name: "Schwarzenegger", gender: "male", age: "72", known_for: "The Terminator", movie_id: 13)
actor.save

actor = Actor.create(first_name: "Keanu", last_name: "Reeves", gender: "male", age: "55", known_for: "John Wick", movie_id: 1)
actor.save

actor = Actor.create(first_name: "Will", last_name: "Ferrell", gender: "male", age: "52", known_for: "Stepbrothers", movie_id: 1)
actor.save



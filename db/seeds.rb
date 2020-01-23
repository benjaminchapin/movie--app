# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.new({title: "Anaconda", year: 1997, plot: "Some fools chase after an anaconda in the Amazon jungle"})
movie.save
movie = Movie.new({title: "Sharknado",  year: 2013, plot: "Some fools get stuck in a tornado but its not just any tornado; its a SHARKNADO!!!" })
movie.save
Movie.new({title: "The Roomn", year: 2003, plot: "Johnny is a successful banker who lives happily in a San Francisco townhouse with his fiancee, Lisa. One day she gets bored of him and seduces Johnny's best friend mark. From there, nothing will be the same again."})
movie.save
Movie.new({title: "The Terminator", year: 1984, plot: "A badass cyborg from the future travels back in time to kick ass and save the world."})
movie.save

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save
actor = Actor.new({first_name: "Leonardo", last_name: "DiCaprio", known_for: "Titanic"})
actor.save
actor = Actor.new({first_name: "Jack", last_name: "Nicholson", known_for: "The Shining"})
actor.save
actor = Actor.new({first_name: "Wesley", last_name: "Snipes", known_for: "Demolition Man"})
actor.save
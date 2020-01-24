# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.create({title: "The Room", year: 2003, plot: "Johnny is a successful banker who lives happily in a San Francisco townhouse with his fiancee, Lisa. One day she gets bored of him and seduces Johnny's best friend mark. From there, nothing will be the same again.", rating: "R", director: "Tommy Wiseau"})
movie.save

movie = Movie.create({title: "The Terminator", year: 1984, plot: "A badass cyborg from the future travels back in time to kick ass and save the world.", rating: "R", director: "James Cameron"})
movie.save

movie = Movie.create({title: "John Wick", year: 2014, plot: "Legendary assassin John Wick (Keanu Reeves) retired from his violent career after marrying the love of his life. Her sudden death leaves John in deep mourning. When sadistic mobster Iosef Tarasov (Alfie Allen) and his thugs steal John's prized car and kill the puppy that was a last gift from his wife, John unleashes the remorseless killing machine within and seeks vengeance. Meanwhile, Iosef's father (Michael Nyqvist) -- John's former colleague -- puts a huge bounty on John's head.", rating: "R", director: "Chad Stahelski"})
movie.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'john', age: 40)
User.create(username: 'jeff', age: 50)
User.create(username: 'bill', age: 37)

Song.create(song_name: 'In My Life', artist: 'The Beatles')
Song.create(song_name: 'Circle Of Life', artist: 'Elton John')
Song.create(song_name: 'Symphony No. 9', artist: 'Beethoven')
Song.create(song_name: 'Remember Me', artist: 'Gael Garcia Bernal')

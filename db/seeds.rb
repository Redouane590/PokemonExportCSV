# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Lancement des seeds"
Pokemon.destroy_all
puts "Recuperation de tout les pokemon de Generation 1"
Pokemon.fetch_data
puts "suppresion du premier pokemon car il est bug"
Pokemon.first.destroy

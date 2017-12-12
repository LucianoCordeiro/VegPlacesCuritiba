# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.create(name: "Restaurante Veg",
             modality: "Restaurante",
             openinghours: "Diariamente",
             address: "R. Cap. Tobias Pereira da Cruz, 1384",
             sort: "Vegano")

Place.create(name: "Restaurante Veggie",
             modality: "Restaurante",
             openinghours: "Diariamente",
             address: "R. Izabel A Redentora, 1901",
             sort: "Vegano")

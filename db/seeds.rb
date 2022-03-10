# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Food.destroy_all 

f1= Food.create(name:'Pizza',stars: 5)
f2= Food.create(name:'Pasta',stars: 4.5)

f1.Food_types.create(name:'Italian',country:'Italy')
f2.Food_types.create(name:'Italian',country:'Italy')

puts"Foods: #{Food.all.size}"
puts"Food_type: #{Food.all.size}"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = JSON.parse(open(url).read)

ingredients = data["drinks"]

ingredients.each do |element|
  ingredient_name = element["strIngredient1"]
  new_ingredient = Ingredient.new(name: ingredient_name)
  new_ingredient.save!
end

puts "Created #{Ingredient.count} ingredients"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Warehouse.destroy_all
15.times do
  Item.create!(name: Faker::Coffee.blend_name, description: Faker::Coffee.notes)
end
20.times do |i|
  warehouse = Warehouse.create!(name: "Warehouse #{i + 1}", location: Faker::Address.full_address)
  5.times do
    warehouse.items.create!(name: Faker::Coffee.blend_name, description: Faker::Coffee.notes)
  end
end

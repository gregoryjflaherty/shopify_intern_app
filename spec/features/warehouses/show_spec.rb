require 'rails_helper'

RSpec.describe 'Warehouse Show Page' do
 before :each do
   @warehouse1 = Warehouse.create!(name: "Warehouse 1", location: Faker::Address.full_address)
   @warehouse2 = Warehouse.create!(name: "Warehouse 2", location: Faker::Address.full_address)



   @item1 = @warehouse1.items.create!(name: "Best" , description: Faker::Coffee.notes)
   @item2 = @warehouse1.items.create!(name: "Better" , description: Faker::Coffee.notes)
   @item3 = @warehouse2.items.create!(name: "Bad" , description: Faker::Coffee.notes)
   @item4 = @warehouse2.items.create!(name: "Worst" , description: Faker::Coffee.notes)

  visit '/warehouses'
  expect(current_path).to eq(warehouses_path)

  within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
   click_on @warehouse1.name

   expect(current_path).to eq(warehouse_path(@warehouse1))
  end
 end

 it 'Warehouse show only lists its attributes and items' do
   expect(current_path).to eq(warehouse_path(@warehouse1))

   expect(page).to have_content(@warehouse1.name)
   expect(page).to have_content(@warehouse1.location)
   expect(page).to have_content(@item1.name)
   expect(page).to have_content(@item2.name)

   expect(page).to_not have_content(@warehouse2.name)
   expect(page).to_not have_content(@warehouse2.location)
   expect(page).to_not have_content(@item3.name)
   expect(page).to_not have_content(@item4.name)
  end
end

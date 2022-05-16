require 'rails_helper'

RSpec.describe 'Item Edit/Index Page' do
 before :each do
   @item1 = Item.create!(name: "Best" , description: Faker::Coffee.notes)
   @warehouse = Warehouse.create!(name: "Warehouse 1", location: Faker::Address.full_address)
   @warehouse = Warehouse.create!(name: "Warehouse 2", location: Faker::Address.full_address)

   visit '/items'
 end

 it 'edits an items' do
  expect(current_path).to eq(items_path)

  within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
   expect(page).to have_content(@item1.name)
   expect(page).to have_button("Edit")

   click_on "Edit"
   expect(page).to have_button("Update Item")

   fill_in "item_name", :with => "Test Item"
   fill_in "item_description", :with => "Good stuff"
   find_button("Update Item").click
  end

   expect(current_path).to eq(items_path)
   expect(page).to have_content("Test Item")
   expect(page).to have_content("Good stuff")
   expect(page).to have_content("Test Item Has Been Updated!")
   expect(page).to_not have_content("Best")
 end

 it 'assigns a warehouses' do
   expect(current_path).to eq(items_path)
   find('#item_warehouse_id', :text => 'Warehouse 1').click

   find(:xpath, "/html/body/center/div/table/tbody/tr/th[3]").click
   expect(current_path).to eq(items_path)
   expect(page).to have_content("Warehouse 1")
 end
end

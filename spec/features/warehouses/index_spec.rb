require 'rails_helper'

RSpec.describe 'Warehouse Index Page' do
 before :each do
  @warehouse1 = Warehouse.create!(name: "Warehouse 1", location: Faker::Address.full_address)
  @warehouse2 = Warehouse.create!(name: "Warehouse 2", location: Faker::Address.full_address)
  @warehouse3 = Warehouse.create!(name: "Warehouse 3", location: Faker::Address.full_address)

  visit '/warehouses'
 end

 it 'has title' do
   expect(current_path).to eq(warehouses_path)

   expect(page).to have_content("ALL WAREHOUSES")
 end

 it 'lists all warehouses in numerical order' do
  expect(current_path).to eq(warehouses_path)

  within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
   expect(page).to have_link(@warehouse1.name)
  end

  within(:xpath, "/html/body/center/div/table/tbody/tr[2]") do
   expect(page).to have_link(@warehouse2.name)
  end

  within(:xpath, "/html/body/center/div/table/tbody/tr[3]") do
   expect(page).to have_link(@warehouse3.name)
  end
 end

 it 'links to warehouse show page' do
   expect(current_path).to eq(warehouses_path)

   within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
    click_on @warehouse1.name

    expect(current_path).to eq(warehouse_path(@warehouse1))
   end
 end
end

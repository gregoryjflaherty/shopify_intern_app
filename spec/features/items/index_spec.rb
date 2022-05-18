require 'rails_helper'

RSpec.describe 'Item Index Page' do
 before :each do
  @warehouse1 = Warehouse.create!(name: "Warehouse 1", location: Faker::Address.full_address)
  @warehouse2 = Warehouse.create!(name: "Warehouse 2", location: Faker::Address.full_address)
  @warehouse3 = Warehouse.create!(name: "Warehouse 3", location: Faker::Address.full_address)


  @item1 = @warehouse3.items.create!(name: "Best" , description: Faker::Coffee.notes)
  @item2 = @warehouse1.items.create!(name: "Better" , description: Faker::Coffee.notes)
  @item3 = @warehouse2.items.create!(name: "Worst" , description: Faker::Coffee.notes)


  visit '/items'
 end

 it 'has title' do
   expect(current_path).to eq(items_path)

   expect(page).to have_content("ALL ITEMS")
 end

 it 'lists all items in A-Z order' do
  expect(current_path).to eq(items_path)

  within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
   expect(page).to have_content(@item1.name)
  end

  within(:xpath, "/html/body/center/div/table/tbody/tr[2]") do
   expect(page).to have_content(@item2.name)
  end

  within(:xpath, "/html/body/center/div/table/tbody/tr[3]") do
   expect(page).to have_content(@item3.name)
  end
 end

 it 'can list items by warehouse' do
   expect(current_path).to eq(items_path)
   click_on "Sort by Warehouse"

   expect(current_path).to eq(items_path)

   within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
    expect(page).to have_content(@item2.name)
   end

   within(:xpath, "/html/body/center/div/table/tbody/tr[2]") do
    expect(page).to have_content(@item3.name)
   end

   within(:xpath, "/html/body/center/div/table/tbody/tr[3]") do
    expect(page).to have_content(@item1.name)
   end
 end
end

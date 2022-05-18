require 'rails_helper'

RSpec.describe 'Landing Page' do
 before :each do
   visit '/'
 end

 it 'has title' do
   expect(current_path).to eq(root_path)

   expect(page).to have_content("Inventory")
 end

 it 'has items button' do
   expect(current_path).to eq(root_path)

   within(:xpath, "/html/body/center") do
    expect(page).to have_button("Items")
    click_on "Items"
    expect(current_path).to eq(items_path)
   end

 end

 it 'has warehouses button' do
   expect(current_path).to eq(root_path)
   within(:xpath, "/html/body/center") do
     expect(page).to have_button("Warehouses")
     click_on "Warehouses"
     expect(current_path).to eq(warehouses_path)
   end
 end
end

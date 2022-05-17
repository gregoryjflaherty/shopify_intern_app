require 'rails_helper'

RSpec.describe 'Warehouse Create / Index Page' do
 before :each do
  @warehouse1 = Warehouse.create!(name: "Warehouse 1", location: Faker::Address.full_address)

  visit '/warehouses'
 end

 it 'starts with one item' do
   expect(current_path).to eq(warehouses_path)

   within(:xpath, "/html/body/center/div/table") do
     expect(page).to have_content(@warehouse1.name)
     expect(page).to have_content(@warehouse1.location)
     expect(page).to_not have_content("Warehouse 2")
     expect(page).to_not have_content("Secret Location")
   end
  end

 it 'creates new warehouse and adds warehouse to index' do
   expect(current_path).to eq(warehouses_path)
   expect(page).to have_content("CREATE NEW WAREHOUSE")

   within(:xpath, "/html/body/center/form") do
     fill_in "warehouse_name", :with => "Warehouse 2"
     fill_in "warehouse_location", :with => "Secret Location"
     find_button("Create Warehouse").click
   end

   expect(page).to have_content(@warehouse1.name)
   expect(page).to have_content(@warehouse1.location)
   expect(page).to have_content("Warehouse 2")
   expect(page).to have_content("Secret Location")
 end

 it "flashes error if name is blank" do
   expect(current_path).to eq(warehouses_path)

   within(:xpath, "/html/body/center/form") do
     fill_in "warehouse_location", :with => "Secret Location"
     find_button("Create Warehouse").click
   end

   expect(page).to have_content("Error: Name can't be blank")
   expect(page).to_not have_content("Warehouse 2")
   expect(page).to_not have_content("Secret Location")
 end

 it "flashes error if description is blank" do
   expect(current_path).to eq(warehouses_path)

   within(:xpath, "/html/body/center/form") do
     fill_in "warehouse_name", :with => "Warehouse 2"
     find_button("Create Warehouse").click
   end

   expect(page).to have_content("Error: Location can't be blank")
   expect(page).to_not have_content("Warehouse 2")
   expect(page).to_not have_content("Secret Location")
 end

 it "flashes error if duplicate warehouse is created" do
   expect(current_path).to eq(warehouses_path)

   within(:xpath, "/html/body/center/form") do
     fill_in "warehouse_name", :with => "Warehouse 1"
     fill_in "warehouse_location", :with => "Secret Location"
     find_button("Create Warehouse").click
   end

   expect(page).to have_content("Error: Name has already been taken")
   expect(page).to_not have_content("Warehouse 2")
   expect(page).to_not have_content("Secret Location")
 end
end

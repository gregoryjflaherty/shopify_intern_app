require 'rails_helper'

RSpec.describe 'Create / Index Page' do
 before :each do
  @item1 = Item.create!(name: "Best" , description: Faker::Coffee.notes)

  visit '/items'
 end

 it 'starts with one item' do
   expect(current_path).to eq(items_path)

   within(:xpath, "/html/body/center/div/table") do
     expect(page).to have_content(@item1.name)
     expect(page).to_not have_content("Better")
     expect(page).to_not have_content("Good description")
   end
  end

 it 'creates new items and adds item to index' do
   expect(current_path).to eq(items_path)
   expect(page).to have_content("CREATE NEW ITEM")

   within(:xpath, "/html/body/center/form") do
     fill_in "item_name", :with => "Better"
     fill_in "item_description", :with => "Good description"
     find_button("Create Item").click
   end

   expect(page).to have_content(@item1.name)
   expect(page).to have_content(@item1.description)
   expect(page).to have_content("Good description")
   expect(page).to have_content("Better")
 end

 it "flashes error if name is blank" do
   expect(current_path).to eq(items_path)

   within(:xpath, "/html/body/center/form") do
     fill_in "item_description", :with => "Good description"
     find_button("Create Item").click
   end

   expect(page).to have_content("Error: Name can't be blank")
   expect(page).to_not have_content("Good description")
   expect(page).to_not have_content("Better")
 end

 it "flashes error if description is blank" do
   expect(current_path).to eq(items_path)

   within(:xpath, "/html/body/center/form") do
     fill_in "item_name", :with => "Better"
     find_button("Create Item").click
   end

   expect(page).to have_content("Error: Description can't be blank")
   expect(page).to_not have_content("Good description")
   expect(page).to_not have_content("Better")
 end
end

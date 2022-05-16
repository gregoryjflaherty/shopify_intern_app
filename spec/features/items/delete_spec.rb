require 'rails_helper'

RSpec.describe 'Item Delete/Index Page' do
  before :each do
    @item1 = Item.create!(name: "Best" , description: Faker::Coffee.notes)
    @item2 = Item.create!(name: "Better" , description: Faker::Coffee.notes)

   visit '/items'
  end

  it 'deletes an items' do
    expect(current_path).to eq(items_path)

    expect(page).to have_content(@item1.name)
    expect(page).to have_content(@item2.name)

    within(:xpath, "/html/body/center/div/table/tbody/tr[1]") do
     expect(page).to have_button("Delete")

     click_on "Delete"
    end

    expect(page).to have_content("Best Has Been Deleted!")
    expect(page).to have_content(@item2.name)
    expect(page).to_not have_content(@item1.description)
  end
end

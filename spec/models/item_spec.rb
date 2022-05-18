require 'rails_helper'

RSpec.describe Item do
  describe 'associations' do
      it { should belong_to(:warehouse).optional }
      it { should validate_presence_of(:name)}
      it { should validate_presence_of(:description)}
  end

  describe '#class methods' do
    before(:each) do
      @item1 = Item.create!(name: "Worst" , description: Faker::Coffee.notes)
      @item2 = Item.create!(name: "Better" , description: Faker::Coffee.notes)
      @item3 = Item.create!(name: "Best" , description: Faker::Coffee.notes)
    end

    context '#alphabetically' do
       it 'sorts items in alphabetical order' do
         results = Item.alphabetically

         expect(results[0]).to eq(@item3)
         expect(results[1]).to eq(@item2)
         expect(results[2]).to eq(@item1)
       end
    end
  end
end

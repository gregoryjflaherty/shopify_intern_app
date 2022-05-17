require 'rails_helper'

RSpec.describe Warehouse do
  describe 'associations' do
    it { should have_many(:items) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:location) }
  end
end

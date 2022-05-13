require 'rails_helper'

RSpec.describe Warehouse do
  describe 'associations' do
    it { should have_many(:items) }
  end
end

require 'rails_helper'

RSpec.describe Item do
  describe 'associations' do
      it { should belong_to(:warehouse).optional }
  end
end 

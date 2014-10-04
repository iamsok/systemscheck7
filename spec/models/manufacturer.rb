require 'rails_helper'

describe Manufacturer do

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country) }
  end

  describe 'associations' do
    it { should have_many(:cars) }
    # it { should have_many(:comments).through(:reviews) }
  end

end

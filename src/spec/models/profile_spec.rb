require 'rails_helper'

RSpec.describe Profile, type: :profile do

    it 'ensures first name presence' do
      user = User.new(last_name: 'Last', email: 'test@test.com').save
      expect(user).to eq(false)
    end

    it 'ensures last name presence' do
      user = User.new(first_name: 'First', email: 'test@test.com').save
      expect(user).to eq(false)
    end

    it 'ensures email name presence' do
      user = User.new(first_name: 'First', last_name: 'Last').save
      expect(user).to eq(false)
    end

    it 'should save sucessfully' do
      user = User.new(first_name: 'First', last_name: 'Last', email: 'test@test.com').save
      expect(user).to eq(true)
    end

  end

end

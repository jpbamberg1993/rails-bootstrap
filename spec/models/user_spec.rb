require 'rails_helper'

describe User do
	
	before(:each) { @user = FactoryGirl.create(:user) }

	it 'should be valid' do
		user = FactoryGirl.build(:user)
		expect(user).to be_valid
	end

	it "should be invalid with a blank email address" do
    user = FactoryGirl.build(:user, email: nil)
    expect(user).to_not be_valid
  end

	it 'all returns a list of users' do
		expect(User.all.count).not_to eq 0
	end
end
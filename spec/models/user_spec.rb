require 'rails_helper'

describe User do
	
	before(:each) { @user = FactoryGirl.create(:user) }

	it "should be valid" do
		user = User.new(email: 'user@example.com')
		expect(user).to be_valid
	end

	it 'all returns a list of users' do
		expect(User.all.count).not_to eq 0
	end
end
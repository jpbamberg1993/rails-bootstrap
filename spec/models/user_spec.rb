require 'rails_helper'

# RSpec generated test
# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do
	
	it "should be valid" do
		user = User.new(email: 'user@example.com')
		expect(user).to be_valid
	end

end
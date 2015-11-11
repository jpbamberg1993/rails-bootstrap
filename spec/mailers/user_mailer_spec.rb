require "rails_helper"

# Boiler plate 
# RSpec.describe UserMailer, type: :mailer do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe UserMailer do
	
	describe '#send_email' do
			
		before(:each) do
			@user = FactoryGirl.create(:user)
			UserMailer.send_email(@user).deliver_now
		end

		it 'sends an email' do
			expect(ActionMailer::Base.deliveries.count).to eq 1
		end

		it 'sends an email to the correct recipient' do
			# expect(ActionMailer::Base.deliveries.first.to).to match [@user.email]
			expect(open_last_email).to be_delivered_to @user.email
		end

		it 'sends an email from the correct sender' do
			# expect(ActionMailer::Base.deliveries.first.from).to match ['sender@example.com']
			expect(open_last_email).to be_delivered_from 'sender@example.com'
		end

		it 'sends an email with the correct subject' do
			# expect(ActionMailer::Base.deliveries.first.subject).to match 'You Have Mail'
			expect(open_last_email).to have_subject 'You Have Mail'
		end
	end
end
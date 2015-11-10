# # Feature: Sign Up
# # 	As a visitor
# # 	I want to sign up
# # 	So I can view protected sections of the site
# feature 'Sign up' do
	
# 	# Scenario: Visitor Signs Up With Valid
# 	# 	Given I am a visitor
# 	# 	When I sign up with valid data 
# 	# 	Then I should see a valid sign up message
# 	scenario 'User Signs Up With Valid Data' do
# 		visit new_user_registration_path
# 		fill_in 'Name', :with => 'Test User'
# 		fill_in 'Email', :with => 'user@example.com'
# 		fill_in 'Password', :with => 'changeme'
# 		fill_in 'Password Confirmation', :with => 'changeme'
# 		click_button 'Sign Up'
# 		expect(page).to have_content 'Welcome! You have signed up successfully.'
# 	end
# end
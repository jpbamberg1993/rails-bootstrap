# Feature: Home Page
# 	As a visitor
# 	I want to visit a home page
# 	So I can learn more about the website 
feature 'Home Page' do
	
	# Scenario: Visit the Home Page
	# 	Given I am a visitor 
	# 	When I visit the home page
	# 	Then I should see "Welcome"
	scenario 'Visit the Home Page', :js do
		visit root_path
		# save_and_open_page
		expect(page).to have_content 'Welcome'
	end

end


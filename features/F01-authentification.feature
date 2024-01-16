@javascript
Feature: F01 Authentication


	Scenario: as a guest I can open main page to start read info 

		Given I am a guest
		When I open the main page
		Then I see text "Building history"

	@pending
	Scenario: as a guest register to become a user

		Given I am a guest
		When I open the main page
		And I click on "Log In"
		And I click on "Register"
		And I fill in "Email" with "new.user@example.com"
		And I fill in "Password" with "secret123"
		And I fill in "Password Confirmation" with "secret123"
		Then I see text "Loggin in as New User"

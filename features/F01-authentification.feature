@javascript
Feature: F01 Authentication


	Scenario: as a guest I can open main page to start read info 

		Given I am a guest
		When open the main page
		Then see text "Building history"

	@pending
	Scenario: as a guest register to become a user

		Given I am a guest
		When open the main page
		And click on "Log In"
		And click on "Register"
		And fill in "Email" with "new.user@example.com"
		And fill in "Password" with "secret123"
		And fill in "Password Confirmation" with "secret123"
		Then see text "Loggin in as New User"

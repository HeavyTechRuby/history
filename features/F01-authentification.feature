Feature: F01 Authentication


	Scenario: as a guest I can open main page to start read info 

		Given I am a guest
		When I open the main page
		Then I see text "Building history"

Feature: F01 Add history

	Scenario: as user I can tell new story about building
		Given I am a user
		And open the main page
		When click on "New story"
		And fill in "Address" with "Moscow, Lenins street, 12"
		And fill in "Story" with "This builing was completely destroyed during WW"
		And click on "Create Story"
		Then open the main page
		And click on "Moscow, Lenins street, 12"
		And see text "This builing was completely destroyed during WW"

	
	Scenario: as user I can suggest update for a story

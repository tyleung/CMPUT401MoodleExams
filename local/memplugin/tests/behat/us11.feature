@local @local_memplugin
Feature: Toolbar comments for marking
  In order to mark exams
  As an instructor
  I need to be able to add comments when marking exams

  Scenario: Instructor uses the provided toolbar to add comments to an exam
    Given I go to the "grid"
	When I select an exam "page" from the grid
	Then I should see the "toolbar"
	And I press the "comment" tool
	And I click on the page
	And I should see that a "comment box" has been created
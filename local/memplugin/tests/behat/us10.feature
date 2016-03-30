@local @local_memplugin
Feature: Toolbar symbols for marking
  In order to mark exams
  As an instructor
  I need to be able to mark exams with "Check" marks or "X" marks

  Scenario: Instructor uses the provided toolbar to mark an exam
    Given I go to the "grid"
	When I select an exam "page" from the grid
	Then I should see the "toolbar"
	And I press the "Check" mark
	And I make a mark on the page
	And I should see that a "Check" mark has been created
	And I press the "X" mark
	And I make a mark on the page
	And I should see that an "X" mark has been created
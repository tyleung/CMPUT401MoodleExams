@local @local_memplugin
Feature: Navigation wheel when marking exams
  In order to navigate through exam booklets or pages
  As an instructor
  I need to be able to navigate to different exam booklets or pages

  Scenario: Instructor marks an exam, sees a navigation wheel, and uses it to navigate to another booklet/page
    Given I go to the grid
	When I select an exam page from the grid
	Then I should see the "navigation wheel"
	And I press the "up" button
	And I should see the "previous" booklet
	And I press the "down" button
	And I should see the "next" booklet
	And I press the "left" button
	And I should see the "previous" page
	And I press the "right" button
	And I should see the "next" page
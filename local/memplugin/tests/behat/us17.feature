@local @local_memplugin
Feature: Page grades in grid
  In order to view the grades for each page in the grid
  As an instructor
  I need to be able to view the grades for each page in the grid

  Scenario: Instructor selects an exam from a course to mark, marks a page, returns to the grid and sees the page grade
    Given I go to a "course" page
	And I go to the "exam" page
	When I select an "exam" to "mark"
	And I select a "page" to "mark"
	And I "mark" the page
	And I "return" to the grid
	Then I should see the "grade" of the "page" in the "grid"
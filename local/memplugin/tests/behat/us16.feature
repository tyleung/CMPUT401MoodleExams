@local @local_memplugin
Feature: Grid view
  In order to view all the exams in a grid
  As an instructor
  I need to be able to view all the exams in a grid

  Scenario: Instructor selects an exam from a course to mark and views the grid
    Given I go to a "course" page
	And I go to the "exam" page
	When I select an "exam" to "mark"
	Then I should see the "grid"
@local @local_memplugin
Feature: Roster search
  In order to search through a roster of students
  As an instructor
  I need to be able to search through a roster of students by typing in search words
  
  Scenario: Instructor views a course roster and searches through it by typing in search words
    Given I go to the course "roster" page
	When I fill in the "search bar" with "search words"
	And I press "enter"
	Then the "search results" should be displayed according to the data that matches my search "query"
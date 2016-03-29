@local @local_memplugin
Feature: Exam statistics
  In order to get statistics of an exam
  As an instructor
  I need to be able to view a visual representation of the distribution curve of marks of an exam
  
  Scenario: Instructor views exam statistics and sees a histogram of results
    Given I have completely "finished marking" an exam
	When I go to the "statistics" page
	Then I should see a "histogram"
	And I should see "statistics" displayed on the page
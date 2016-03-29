@local @local_memplugin
Feature: Exam statistics CSV
  In order to download the statistics of an exam
  As an instructor
  I need to be able to download exam statistics into a CSV file
  
  Scenario: Instructor views exam statistics and downloads the statistics as a CSV file
    Given I have completely "finished marking" an exam
	When I go to the "statistics" page
	Then I should see a "download" button
	And I press the "download" button
	And I get a "CSV file"
	And I "open" the "CSV file"
	And I should see the "exam statistics" in the "CSV file"
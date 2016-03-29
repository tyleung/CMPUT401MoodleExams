@local @local_memplugin
Feature: Upload exam pages
  In order to scan exams into the database
  As an instructor
  I need to be able to upload exam pages from multiple exam booklets

  Scenario: Instructor prepares a regular exam, uploads it, and receives an exam pdf with qr codes appended
    Given I go to the "generate exam" page
	When I fill in the name of the exam to generate
	And I "upload" a pdf file
	And I fill in the number of "booklets" to generate
	And I fill in the number of "blank pages" to include
	And I select how I would like to "download"
	And I press "Generate Exams"
	Then I should see a download link
	And I press "download"
	And I should see that the exam has been generated into a pdf file with qr codes
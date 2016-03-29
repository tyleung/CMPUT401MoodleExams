@local @local_memplugin
Feature: Exam pages linked by QR codes
  In order to link exam pages together
  As an instructor
  I need to be able to link exam pages together through their unique QR codes

  Scenario: Instructor generates an exam and sees that the pages are linked by QR codes
    Given I go to the "generate exam" page
	When I "upload" a pdf file
	And I fill in the number of "booklets" to generate
	And I fill in the number of "blank pages" to include
	And I select how I would like to "download"
	And I press "Generate Exams"
	And I "download" the exam pdf
	And I "open" the exam pdf
	Then I should see "QR codes" on each exam page
	And I should see the "QR code id" on each exam page
	And I should see that the pages are "linked" by the "QR codes"
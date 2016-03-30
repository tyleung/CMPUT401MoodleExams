@local @local_memplugin
Feature: Generate QR codes
  In order to append QR codes to exams
  As an instructor
  I need to be able to append QR codes to exams so that I can mark them

  Scenario: Instructor generates an exam and sees that each exam booklet contains unique QR codes on each page
    Given I go to the "generate exam" page
	When I "upload" a pdf file
	And I fill in the number of "booklets" to generate
	And I fill in the number of "blank pages" to include
	And I select how I would like to "download"
	And I press "Generate Exams"
	And I "download" the exam pdf
	And I "open" the exam pdf
	Then I should see "QR codes" on each exam page
	And I should see that the "QR codes" are all unique on each page
	And I should see that the "QR codes" are all unique between booklets
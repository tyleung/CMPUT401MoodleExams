@local @local_memplugin
Feature: Specify number of pages in an exam
  In order to define the exam size
  As an instructor
  I need to be able to specify how many pages there will be in the exam 

  Scenario: Instructor prepares an exam as a pdf, uploads it and specified the number of blank pages to add, then receives a pdf containing the correct total number of pages.
    Given I prepare an exam as a pdf.
	And I go to the "generate exam" page
	When I "upload" the exam
	And I fill in the number of "blank pages" to include
	And I select how I would like to "download"
	And I press "Generate Exams"
	Then I should see a download link
	And I press "download"
	And I should see that the exam has been generated into a pdf file with qr codes
	And I should see that the pdf has the correct total number of pages
-- To run do the following inside this dir:
-- mysql -u root --password=symmetricalSpoon moodledb -A < randomMarking.sql

UPDATE mdl_mem_pages SET page_marks_max=ROUND(1+RAND()*5);
UPDATE mdl_mem_pages SET page_marks=ROUND(1+RAND()*5);


-- SELECT cohorts.name as cohort_name, COUNT(students.name) as student_count
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING COUNT(students.name) >= 18
-- ORDER BY COUNT(students.name);

SELECT cohorts.name, COUNT(assignment_submissions.id) as total_submissions
FROM assignment_submissions
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name 
ORDER BY COUNT(assignment_submissions.id) DESC;

-- SELECT cohorts.name, COUNT(assignment_submissions.id) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- GROUP BY cohorts.name 
-- ORDER BY COUNT(assignment_submissions.id) DESC;

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;

-- SELECT name as cohort_name, COUNT(name) as student_count
-- FROM cohorts
-- GROUP BY name 
-- HAVING COUNT(name) >= 18;


SELECT cohorts.name as cohort_name, COUNT(students.name) as student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.name) >= 18
ORDER BY COUNT(students.name);
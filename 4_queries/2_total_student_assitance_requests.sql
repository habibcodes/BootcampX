-- SELECT COUNT(assistance_requests.teacher_id) as total_assistances, teachers.name as name
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY name;



SELECT COUNT(assistance_requests.student_id) as total_assistances, students.name as name
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;
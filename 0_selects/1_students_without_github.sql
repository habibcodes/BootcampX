SELECT id, name, email FROM students
WHERE github IS NULL
ORDER BY cohort_id;

-- \i 0_selects/1_students_without_github.sql
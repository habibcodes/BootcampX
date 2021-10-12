SELECT assignments.day, SUM(assignments.day) as total_assigments
FROM assignments
JOIN assignment_submissions ON assignments.id = assignment_submissions.id
GROUP BY assignments.day;
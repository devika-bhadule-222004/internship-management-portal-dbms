-- View all students with internship details
SELECT s.name, c.name AS company, i.start_date, i.end_date
FROM Students s
JOIN Internships i ON s.student_id = i.student_id
JOIN Companies c ON c.company_id = i.company_id;

-- Total internships per company
SELECT c.name, COUNT(i.internship_id) AS total_interns
FROM Companies c
JOIN Internships i ON c.company_id = i.company_id
GROUP BY c.name;

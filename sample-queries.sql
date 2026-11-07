-- View all student records
SELECT * FROM students;

-- Find students enrolled in a particular course
SELECT id, name, email FROM students
WHERE course = 'Computer Science';

-- Count students in each course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- Add a new student manually (normally the application would do this)
INSERT INTO students (name, email, course)
VALUES ('Neha Verma', 'neha.verma@example.com', 'Civil Engineering');

-- Update a student's course
UPDATE students
SET course = 'Data Science'
WHERE email = 'aarav.sharma@example.com';

-- Delete a student by ID
DELETE FROM students WHERE id = 6;

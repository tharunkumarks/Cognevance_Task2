# Student Management System — Database Integration & Migrations

This is a simple Spring Boot project extension created for an internship task. It connects the Student Management System to MySQL, uses Spring Data JPA to represent student data in Java, and uses Flyway to create and populate the database safely.

## Technologies used

- Java 17
- Spring Boot
- Spring Data JPA
- MySQL
- Flyway
- Maven

## Database schema

Database name: `student_management_db`

| Column   | Type           | Rules                       | Description           |
| -------- | -------------- | --------------------------- | --------------------- |
| `id`     | `BIGINT`       | Primary key, auto-increment | Unique student ID     |
| `name`   | `VARCHAR(100)` | Required                    | Student name          |
| `email`  | `VARCHAR(150)` | Required, unique            | Student email address |
| `course` | `VARCHAR(100)` | Required                    | Student course        |

## Migration files

Flyway reads migration files from `src/main/resources/db/migration` in version order.

1. `V1__create_students_table.sql` creates the `students` table.
2. `V2__insert_sample_students.sql` inserts five sample student records.

On the first application start, Flyway also creates a `flyway_schema_history` table. It records which migrations have run, so the same migration is not run twice.

## How to run

1. Install MySQL and create the database:

   ```sql
   CREATE DATABASE student_management_db;
   ```

2. Open `src/main/resources/application.properties` and replace `your_mysql_password` with your MySQL password. Change the username or port too if your MySQL setup is different.
3. Run the project from an IDE, or run this command in the project folder:

   ```bash
   mvn spring-boot:run
   ```

4. Flyway runs the migrations automatically. Confirm the result in MySQL:

   ```sql
   USE student_management_db;
   SELECT * FROM students;
   ```

## Sample SQL scripts

The file [`sql/sample-queries.sql`](sql/sample-queries.sql) contains beginner-friendly examples for selecting, grouping, inserting, updating, and deleting student records.

## What is Flyway?

Flyway is a database migration tool. Instead of manually changing a database on every computer, we save each database change as a numbered SQL file. For example, `V1` creates a table and `V2` inserts starter data. When the application starts, Flyway checks its history and applies only migrations that have not been applied yet. This makes the database setup consistent for every developer.

Important: after a migration has been run in a shared project, do not edit that old migration. Create a new migration such as `V3__add_phone_number.sql` for the next database change.

## Screenshots placeholders

Add screenshots here before submission:

1. **MySQL database creation** — show the `student_management_db` database in MySQL Workbench.
2. **Application startup log** — show Flyway successfully applying V1 and V2 migrations.
3. **Student table data** — show the five inserted student records after running `SELECT * FROM students;`.
4. **Project structure** — show the `db/migration` folder and migration files in the IDE.

## GitHub link

Repository link: https://github.com/gollaravikumar/is-t2-student-management-system

Replace the placeholder with your submitted GitHub repository URL.

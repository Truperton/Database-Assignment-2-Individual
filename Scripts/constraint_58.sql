/* 
 * Kacper Krzysztof Grzesiak
 * 19424868
 * Databases 1
 * CSY1026_58
 * 10/FEB/2020
 * Games Programming
 * 1st year
 */
-- CSY1026_58@student/19424868
-- @C:\database\scripts\alter_58.txt

-- Table alters
ALTER TABLE students
DROP (date_of_birth);

ALTER TABLE students
ADD dob DATE;

ALTER TABLE sites
MODIFY location CHAR(40);

ALTER TABLE trainers
MODIFY contact_no NOT NULL;

-- Primary key constraints
ALTER TABLE sites
ADD CONSTRAINT pk_sites
PRIMARY KEY (site_id);

ALTER TABLE subject_areas
ADD CONSTRAINT pk_subject_areas
PRIMARY KEY (subject_id);

ALTER TABLE trainers
ADD CONSTRAINT pk_trainers
PRIMARY KEY (trainer_id);

ALTER TABLE students
ADD CONSTRAINT pk_students
PRIMARY KEY (student_id);

ALTER TABLE courses
ADD CONSTRAINT pk_courses
PRIMARY KEY (course_id);

ALTER TABLE course_runs
ADD CONSTRAINT pk_course_runs
PRIMARY KEY (running_id);

ALTER TABLE attendances
ADD CONSTRAINT pk_attendances
PRIMARY KEY (running_id, student_id);

ALTER TABLE invoices
ADD CONSTRAINT pk_invoices
PRIMARY KEY (invoice_id);

ALTER TABLE companies
ADD CONSTRAINT pk_companies
PRIMARY KEY (company_id);

-- Foreign key constraints
ALTER TABLE courses
ADD CONSTRAINT fk_c_subject_areas
FOREIGN KEY (subject_id)
REFERENCES subject_areas(subject_id);

ALTER TABLE course_runs 
ADD CONSTRAINT fk_cr_sites
FOREIGN KEY (site_id)
REFERENCES sites(site_id);
ALTER TABLE course_runs
ADD CONSTRAINT fk_cr_courses
FOREIGN KEY (course_id)
REFERENCES courses(course_id);
ALTER TABLE course_runs
ADD CONSTRAINT fk_cr_trainers
FOREIGN KEY (trainer_id)
REFERENCES trainers(trainer_id);

ALTER TABLE attendances
ADD CONSTRAINT fk_a_course_runs
FOREIGN KEY (running_id)
REFERENCES course_runs(running_id);
ALTER TABLE attendances
ADD CONSTRAINT fk_a_students
FOREIGN KEY (student_id)
REFERENCES students(student_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_i_companies
FOREIGN KEY (company_id)
REFERENCES companies(company_id);
ALTER TABLE invoices
ADD CONSTRAINT fk_i_students
FOREIGN KEY (student_id)
REFERENCES students(student_id);

-- Check constraints
ALTER TABLE students
ADD CONSTRAINT ck_upper_students_st_fname
CHECK (st_fname = UPPER(st_fname));
ALTER TABLE students
ADD CONSTRAINT ck_upper_students_st_sname
CHECK (st_sname = UPPER(st_sname));

ALTER TABLE courses
ADD CONSTRAINT ck_3to5_courses_duration
CHECK (duration IN ('3','4','5'));

DESC sites;
DESC subject_areas;
DESC trainers;
DESC courses;
DESC course_runs;
DESC attendances;
DESC students;
DESC invoices;
DESC companies;
SELECT TNAME FROM TAB;
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, LAST_NUMBER FROM user_sequences;
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME NOT LIKE 'SYS%';
create database highschool;
use highschool;
CREATE TABLE teacher(
  teacher_id serial PRIMARY KEY, 
  first_name varchar(50), 
  last_name varchar(50), 
  birthdate date
);
CREATE TABLE student(
  student_id serial PRIMARY KEY, 
  first_name varchar(50), 
  last_name varchar(50), 
  reg_number integer, 
  birthdate date
);
CREATE TABLE schedule(
  schedule_id serial PRIMARY KEY, 
  w_day varchar(15), 
  hs_start time, 
  hs_finish time, 
  fk_course integer REFERENCES course (course_id)
);
CREATE TABLE course(
  course_id serial PRIMARY KEY, 
  course_name varchar(50), 
  fk_assigned_teacher integer REFERENCES teacher (teacher_id), 
  w_hours real
);
CREATE TABLE studentxcourse(
  studentxcourse_id serial PRIMARY KEY, 
  fk_course integer REFERENCES course (course_id), 
  fk_student integer REFERENCES student (student_id), 
  parcial_note_1 real, 
  parcial_note_2 real, 
  parcial_note_3 real, 
  final_note real
);
-- ****************************************************
-- ingreso ALUMNOS
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Natalia', 'Bruno', '10683', '19940923'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Sofia', 'Bruno', '14914', '19961220'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Agostina', 'Formia', '10983', '19941226'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Ariela', 'Villalba', '12114', '19970716'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Micaela', 'Montenegro', '12115', 
    '19970610'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Nicolas', 'Salusso', '11745', '19950616'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Andres', 'Pirles', '10785', '19950718'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Agustin', 'Carballo', '11787', '19950407'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Martin', 'Brunori', '14010', '19941016'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Diego', 'Bustos', '11900', '19931201'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Maria', 'Barcia', '14548', '19950905'
  );
INSERT INTO student (
  first_name, last_name, reg_number, 
  birthdate
) 
VALUES 
  (
    'Leandro', 'Murcia', '10899', '19900823'
  );
-- ****************************************************

-- ****************************************************
-- 3 Teachers info
INSERT INTO teacher (first_name, last_name, birthdate) 
VALUES 
  ('Carlos', 'Colazo', '19600915');
INSERT INTO teacher (first_name, last_name, birthdate) 
VALUES 
  ('Pablo', 'Canarias', '19651201');
INSERT INTO teacher (first_name, last_name, birthdate) 
VALUES 
  ('Paola', 'Smith', '19800326');
-- ****************************************************

-- ****************************************************
-- Horarios clases
INSERT INTO schedule (
  w_day, hs_start, hs_finish, fk_course
) 
VALUES 
  ('Lunes', '11:00', '12:00', 2);
INSERT INTO schedule (
  w_day, hs_start, hs_finish, fk_course
) 
VALUES 
  ('Martes', '10:00', '12:00', 2);
INSERT INTO schedule (
  w_day, hs_start, hs_finish, fk_course
) 
VALUES 
  ('Jueves', '13:00', '14:30', 1);
INSERT INTO schedule (
  w_day, hs_start, hs_finish, fk_course
) 
VALUES 
  ('Miercoles', '09:00', '11:30', 1);
INSERT INTO schedule (
  w_day, hs_start, hs_finish, fk_course
) 
VALUES 
  ('Viernes', '08:00', '12:00', 3);
-- ****************************************************

-- ****************************************************
-- Cursos
INSERT INTO course (
  course_name, fk_assigned_teacher, 
  w_hours
) 
VALUES 
  ('Matematica', 1, 4);
INSERT INTO course (
  course_name, fk_assigned_teacher, 
  w_hours
) 
VALUES 
  ('Lengua', 2, 3);
INSERT INTO course (
  course_name, fk_assigned_teacher, 
  w_hours
) 
VALUES 
  ('Ciencias Naturales', 3, 4);
-- ****************************************************

-- ****************************************************
-- Alumnos por curso
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 1, 4.5, 9, 9, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 2, 9, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 3, 2, 5, 2, 3);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 4, 5, 3, 9, 6);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 5, 2, 2, 3, 3);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 6, 4.5, 5, 2, 4);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 7, 10, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 8, 7, 8, 9, 7);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 9, 6, 4, 4, 5);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (1, 10, 7, 8, 7, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 2, 4.5, 9, 9, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 3, 9, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 5, 7, 8, 8, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 4, 5, 3, 2, 3);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 6, 2, 2, 3, 2);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 9, 4.5, 5, 9, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 12, 10, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 11, 7, 8, 9, 7);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 1, 6, 4, 4, 5);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (2, 8, 7, 8, 7, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 10, 4.5, 9, 9, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 12, 9, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 8, 7, 8, 8, 8);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 9, 5, 3, 2, 3);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 7, 2, 2, 3, 2);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 6, 4.5, 5, 9, 7);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 5, 10, 10, 10, 10);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 4, 7, 8, 9, 6);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 3, 6, 4, 4, 5);
INSERT INTO studentxcourse (
  fk_course, fk_student, parcial_note_1, 
  parcial_note_2, parcial_note_3, 
  final_note
) 
VALUES 
  (3, 1, 7, 8, 7, 7);
-- ****************************************************

-- ****************************************************
--List students and teachers for a given course. 
SELECT 
  course.course_name as Course, 
  FORMAT(
    '%s, %s', teacher.last_name, teacher.first_name
  ) as Teacher, 
  FORMAT(
    '%s, %s', student.last_name, student.first_name
  ) as Students 
FROM 
  studentxcourse 
  INNER JOIN course on (
    studentxcourse.fk_course = course.course_id
  ) 
  INNER JOIN student on (
    studentxcourse.fk_student = student.student_id
  ) 
  INNER JOIN teacher on (
    course.fk_assigned_teacher = teacher.teacher_id
  ) 
WHERE 
  course.course_id = 1 
ORDER BY 
  student.last_name;
-- ****************************************************

-- ****************************************************
--Percentage of students that passed/failed a given course.
SELECT 
  course.course_name as Course, 
  (
    select 
      COUNT(*) 
    from 
      studentxcourse 
      inner join course on (
        studentxcourse.fk_course = course.course_id
      ) 
    where 
      studentxcourse.final_note >= 4
  ) * 100 / (
    select 
      COUNT(*) 
    from 
      studentxcourse 
      inner join course on (
        studentxcourse.fk_course = course.course_id
      )
  ) as Porcentaje 
FROM 
  studentxcourse 
  INNER JOIN course on (
    studentxcourse.fk_course = course.course_id
  ) 
WHERE 
  course.course_id = 1 
GROUP BY 
  course.course_id;
-- ****************************************************

-- ****************************************************
--Cantidad alumnos aprobados de un determinado curso
select 
  course.course_name, 
  count(studentxcourse.fk_student) 
from 
  studentxcourse 
  inner join course on (
    studentxcourse.fk_course = course.course_id
  ) 
where 
  studentxcourse.final_note >= 4 
  and course.course_id = 1 
group by 
  course.course_name;
-- ****************************************************

-- ****************************************************
--Cantidad alumnos de un determinado curso
select 
  count(studentxcourse.fk_student) 
from 
  studentxcourse 
  inner join course on (
    studentxcourse.fk_course = course.course_id
  ) 
where 
  course.course_id = 1;
-- ****************************************************

-- ****************************************************
--For a given teacher, list the timeline for each course that he is assigned to (ordered by date), and the course name
SELECT 
  FORMAT(
    '%s, %s', teacher.last_name, teacher.first_name
  ) as Teacher, 
  FORMAT(
    '%s %s - %s: %s', schedule.w_day, 
    schedule.hs_start, schedule.hs_finish, 
    course.course_name
  ) as Schedule 
FROM 
  schedule 
  INNER JOIN course on schedule.fk_course = course.course_id 
  INNER JOIN teacher on course.fk_assigned_teacher = teacher.teacher_id 
WHERE 
  teacher.teacher_id = 2 
ORDER BY 
  schedule.w_day, 
  schedule.hs_start;
-- ****************************************************
-- Active: 1684982784502@@127.0.0.1@3306@trainingapp

--Inserte 3 cursos nuevos.
INSERT INTO cursos (codigo_curso, nombre, horario, costo_realizacion, fecha_realizacion) VALUES
  (11, 'Introducción a la programación', 'Lunes y Miércoles de 10:00 a 12:00', 1500.00, '2022-01-10'),
  (12, 'Programación avanzada en Python', 'Martes y Jueves de 14:00 a 16:00', 2000.00, '2022-02-15'),
  (13, 'Desarrollo web con React', 'Viernes de 18:00 a 21:00 y Sábados de 9:00 a 12:00', 2500.00, '2022-03-05');

--Inserte 3 profesores nuevos
INSERT INTO instructores (instructor_id, nombre, apellido, direccion, correo_electronico,fecha_creacion_cuenta) VALUES
 ('11','Cristian','Weijan','Calle #454' , 'cristian@gmail.com' ,'2023-07-27'),
 ('12','Juan','Perez','Calle #454' , 'juan@gmail.com' ,'2023-07-27'),
 ('13','Pedro','Gonzalez','Calle #454' , 'pedro@gmail.com' ,'2023-07-27');
 
 
 
--  ¿Cuál es el curso más costoso? Selecciónelo.
SELECT * FROM cursos ORDER BY costo_realizacion DESC LIMIT 1;


-- - ¿Cuál es el profesor con menor salario? Selecciónelo. => los Instructores no tienen salarios y no estan relacionados a un curso.
SELECT * FROM instructores ORDER BY fecha_creacion_cuenta ASC LIMIT 1;

-- Seleccione los cursos más costosos que el promedio.
SELECT * FROM cursos WHERE costo_realizacion > (SELECT AVG(costo_realizacion) FROM cursos);

-- Cree una tabla con los cursos menos costosos que el promedio. La tabla debe tener por nombre Cursos económicos.
CREATE TABLE CURSOS_ECONOMICOS AS SELECT * FROM cursos WHERE costo_realizacion < (SELECT AVG(costo_realizacion) FROM cursos);

-- A la tabla Cursos económicos, agrégale dos campos. ‘Cantidad mínima estudiantes’ y ‘Aportes
-- públicos’. La cantidad mínima de estudiantes se refiere al número mínimo de estudiantes
-- necesarios para su realización. Los aportes públicos refieren a los aportes entregados por
-- instituciones públicas para la realización del curso (tiene que ser un valor menor al costo total
-- del curso).

ALTER TABLE CURSOS_ECONOMICOS ADD cantidad_minima_estudiantes INT;
ALTER TABLE CURSOS_ECONOMICOS ADD aportes_publicos INT;
UPDATE CURSOS_ECONOMICOS SET cantidad_minima_estudiantes = 24;
UPDATE CURSOS_ECONOMICOS SET aportes_publicos = 100;

-- Renombre la columna “Costo realización” en la tabla Cursos económicos. El nombre nuevo debe
-- ser: Costo efectivo. 

ALTER TABLE CURSOS_ECONOMICOS RENAME COLUMN costo_realizacion TO costo_efectivo;

-- En dicha columna, a cada valor se le debe restar el valor de ‘Aportes públicos’.
UPDATE CURSOS_ECONOMICOS SET costo_efectivo = costo_efectivo - aportes_publicos;

-- Por último, actualice 5 cursos y 3 profesores.

UPDATE cursos SET nombre = 'Introducción a la programación' WHERE codigo_curso = 11;
UPDATE cursos SET nombre = 'Programación avanzada en Python' WHERE codigo_curso = 12;
UPDATE cursos SET nombre = 'Desarrollo web con React' WHERE codigo_curso = 13;
UPDATE instructores SET nombre = 'Cristian' WHERE instructor_id = 11;
UPDATE instructores SET nombre = 'Juan' WHERE instructor_id = 12;
UPDATE instructores SET nombre = 'Pedro' WHERE instructor_id = 13;
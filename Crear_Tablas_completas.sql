/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS alumnos;
CREATE TABLE `alumnos` (
  `alumno_id` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `telefono` varchar(60) DEFAULT NULL,
  `fecha_creacion_cuenta` date DEFAULT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS cursos;
CREATE TABLE `cursos` (
  `codigo_curso` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `horario` varchar(60) DEFAULT NULL,
  `costo_realizacion` decimal(10,2) DEFAULT NULL,
  `fecha_realizacion` date DEFAULT NULL,
  PRIMARY KEY (`codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS cursos_economicos;
CREATE TABLE `cursos_economicos` (
  `codigo_curso` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `horario` varchar(60) DEFAULT NULL,
  `costo_efectivo` decimal(10,2) DEFAULT NULL,
  `fecha_realizacion` date DEFAULT NULL,
  `cantidad_minima_estudiantes` int DEFAULT NULL,
  `aportes_publicos` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS instructores;
CREATE TABLE `instructores` (
  `instructor_id` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `fecha_creacion_cuenta` date DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO alumnos(alumno_id,nombre,apellido,correo_electronico,telefono,fecha_creacion_cuenta) VALUES(1,'Juan','Perez','juan@example.com','123456789','2023-01-01'),(2,'Maria','Lopez','maria@example.com','987654321','2023-01-02'),(3,'Pedro','Gonzalez','pedro@example.com','456789123','2023-01-03'),(4,'Laura','Rodriguez','laura@example.com','789123456','2023-01-04'),(5,'Carlos','Sanchez','carlos@example.com','321654987','2023-01-05'),(6,'Ana','Torres','ana@example.com','654987321','2023-01-06'),(7,'Luis','Ramirez','luis@example.com','987321654','2023-01-07'),(8,'Sofia','Hernandez','sofia@example.com','123987654','2023-01-08'),(9,'Diego','Martinez','diego@example.com','987654123','2023-01-09'),(10,'Valeria','Vargas','valeria@example.com','456123789','2023-01-10');

INSERT INTO cursos(codigo_curso,nombre,horario,costo_realizacion,fecha_realizacion) VALUES(1,'Programación Básica','Lunes a Viernes, 9:00-11:00',150.00,'2023-02-01'),(2,'Diseño Gráfico Avanzado','Martes y Jueves, 18:00-20:00',200.00,'2023-02-05'),(3,'Inglés Intermedio','Lunes y Miércoles, 16:00-18:00',100.00,'2023-02-10'),(4,'Marketing Digital','Viernes, 15:00-17:00',180.00,'2023-02-15'),(5,'Administración de Proyectos','Martes y Jueves, 10:00-12:00',250.00,'2023-02-20'),(6,'Fotografía Profesional','Miércoles, 14:00-16:00',120.00,'2023-02-25'),(7,'Desarrollo Web Avanzado','Lunes y Miércoles, 19:00-21:00',300.00,'2023-03-01'),(8,'Contabilidad Financiera','Martes y Jueves, 16:00-18:00',180.00,'2023-03-05'),(9,'Arte y Cultura','Viernes, 17:00-19:00',90.00,'2023-03-10'),(10,'Liderazgo Empresarial','Lunes y Miércoles, 18:00-20:00',220.00,'2023-03-15'),(11,'Introducción a la programación','Lunes y Miércoles de 10:00 a 12:00',1500.00,'2022-01-10'),(12,'Programación avanzada en Python','Martes y Jueves de 14:00 a 16:00',2000.00,'2022-02-15'),(13,'Desarrollo web con React','Viernes de 18:00 a 21:00 y Sábados de 9:00 a 12:00',2500.00,'2022-03-05');

INSERT INTO cursos_economicos(codigo_curso,nombre,horario,costo_efectivo,fecha_realizacion,cantidad_minima_estudiantes,aportes_publicos) VALUES(1,'Programación Básica','Lunes a Viernes, 9:00-11:00',50.00,'2023-02-01',24,100),(2,'Diseño Gráfico Avanzado','Martes y Jueves, 18:00-20:00',100.00,'2023-02-05',24,100),(3,'Inglés Intermedio','Lunes y Miércoles, 16:00-18:00',0.00,'2023-02-10',24,100),(4,'Marketing Digital','Viernes, 15:00-17:00',80.00,'2023-02-15',24,100),(5,'Administración de Proyectos','Martes y Jueves, 10:00-12:00',150.00,'2023-02-20',24,100),(6,'Fotografía Profesional','Miércoles, 14:00-16:00',20.00,'2023-02-25',24,100),(7,'Desarrollo Web Avanzado','Lunes y Miércoles, 19:00-21:00',200.00,'2023-03-01',24,100),(8,'Contabilidad Financiera','Martes y Jueves, 16:00-18:00',80.00,'2023-03-05',24,100),(9,'Arte y Cultura','Viernes, 17:00-19:00',-10.00,'2023-03-10',24,100),(10,'Liderazgo Empresarial','Lunes y Miércoles, 18:00-20:00',120.00,'2023-03-15',24,100);
INSERT INTO instructores(instructor_id,nombre,apellido,direccion,correo_electronico,fecha_creacion_cuenta) VALUES(1,'Juan','Perez','Calle A','juan@example.com','2023-01-01'),(2,'Maria','Lopez','Calle B','maria@example.com','2023-01-02'),(3,'Pedro','Gonzalez','Calle C','pedro@example.com','2023-01-03'),(4,'Laura','Rodriguez','Calle D','laura@example.com','2023-01-04'),(5,'Carlos','Sanchez','Calle E','carlos@example.com','2023-01-05'),(6,'Ana','Torres','Calle F','ana@example.com','2023-01-06'),(7,'Luis','Ramirez','Calle G','luis@example.com','2023-01-07'),(8,'Sofia','Hernandez','Calle H','sofia@example.com','2023-01-08'),(9,'Diego','Martinez','Calle I','diego@example.com','2023-01-09'),(10,'Valeria','Vargas','Calle J','valeria@example.com','2023-01-10'),(11,'Cristian','Weijan','Calle #454','cristian@gmail.com','2023-07-27'),(12,'Juan','Perez','Calle #454','juan@gmail.com','2023-07-27'),(13,'Pedro','Gonzalez','Calle #454','pedro@gmail.com','2023-07-27');
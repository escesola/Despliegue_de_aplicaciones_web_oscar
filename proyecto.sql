CREATE DATABASE proyecto;

USE proyecto;

CREATE TABLE usuarios (

  user_id    SMALLINT UNSIGNED AUTO_INCREMENT,
  nombre     VARCHAR(15)  NOT NULL,
  apellidos  VARCHAR(30)  NOT NULL,
  telefono	 INT(9)		  NOT NULL,
  email  	 VARCHAR(50)  NOT NULL,
  contra     VARCHAR(300) NOT NULL,
  token_password VARCHAR(40) DEFAULT NULL,
  reseteo_contraseña SMALLINT(5) DEFAULT 0,
  intentos SMALLINT(2) NOT NULL DEFAULT 0,
  activo	 BIT		  NOT NULL DEFAULT 0,
  ultima_sesion DATETIME DEFAULT NULL,
  activacion BIT NOT NULL DEFAULT 0,
  token		 VARCHAR(40) DEFAULT NULL,
  fecha_alta DATE        NOT NULL,
  fecha_baja DATE DEFAULT NULL,
  INDEX(email),

  CONSTRAINT pk_usuarios PRIMARY KEY (user_id)

);
INSERT INTO `usuarios` (`user_id`, `nombre`, `apellidos`, `telefono`, `email`, `contra`, `token_password`, `reseteo_contraseña`, `intentos`, `activo`, `ultima_sesion`, `activacion`, `token`, `fecha_alta`, `fecha_baja`) VALUES
(1, 'Cosmina', 'Nicolau', 601058742, 'cosmi@gmail.com', '$2y$10$N/ZUa6Csj4.RAiaZDQ6H6u9IBTIW7BkPmAyBHHTvLydY4X/RLxYOW', NULL, 0, 0, 0, NULL, 0, NULL, '2020-04-30', NULL);


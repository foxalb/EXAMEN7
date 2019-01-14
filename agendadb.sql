CREATE DATABASE agenda_db;

CREATE TABLE usuarios (
  email varchar(200) NOT NULL,
  nombre varchar(200) NOT NULL,
  password varchar(255) NOT NULL,
  fecha_nacimiento date NOT NULL,
  CONSTRAINT pk_usuarios PRIMARY KEY(email)
) ENGINE=InnoDB;

INSERT INTO usuarios (email, nombre, password, fecha_nacimiento) VALUES
('maria@mail.com', 'Maria', '$2y$10$W8FD0TxTSe7SI9PcYjX/kOGacZDWI/2vog.D6G/jjNmY/Ss7ZYH9.', '1985-10-01'),
('teresa@mail.com', 'Teresa Perez', '$2y$10$OLwyAFahqQXnniZB0lbLQ.tKeKApIHtnqPTsX8K9bFcfWr/AmjJdG', '1987-06-11'),
('usuario@mail.com', 'usuario', '$2y$10$oehYLZno8Cm7g6799HRmietD/ps.turmjQ.RUcLZJv4oJ54mXdFc2', '1999-05-13');

CREATE TABLE eventos (
  id int(11) auto_increment not null, AUTO_INCREMENT=2,
  titulo varchar(200) NOT NULL,
  fecha_inicio varchar(200) NOT NULL,
  fecha_fin varchar(200) DEFAULT NULL,
  hora_inicio varchar(200) DEFAULT NULL,
  hora_fin varchar(200) DEFAULT NULL,
  allday tinyint(1) DEFAULT NULL,
  fk_usuarios varchar(200) NOT NULL,
  CONSTRAINT pk_eventos PRIMARY KEY(id),
  CONSTRAINT fk_evento_usuario FOREIGN KEY(fk_usuarios) REFERENCES usuarios(email)
) ENGINE=InnoDB;

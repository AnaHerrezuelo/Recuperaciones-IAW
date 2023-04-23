/* ACCESO USUARIOS */

CREATE DATABASE accesousuarios;

USE accesousuarios;





CREATE TABLE usuarios(
                         id_usuarios INT AUTO_INCREMENT,
                         usuarios VARCHAR(50) NOT NULL ,
                         contraseña VARCHAR(50) NOT NULL ,
                         CONSTRAINT usuariospk PRIMARY KEY  (id_usuarios)
);

SELECT * from usuarios;
DROP TABLE usuarios CASCADE;

CREATE TABLE lista(
                      id_lista INT AUTO_INCREMENT,
                      lista VARCHAR(50) NOT NULL ,
                      id_usuariosfk INT,
                      CONSTRAINT listapk PRIMARY KEY  (id_lista),
                      CONSTRAINT usuariosfk FOREIGN KEY (id_usuariosfk) REFERENCES usuarios(id_usuarios)
);

SELECT * from lista;
DROP TABLE lista CASCADE;




INSERT INTO usuarios(usuarios, contraseña) VALUES ('Ana', '123456');
INSERT INTO usuarios(usuarios, contraseña) VALUES ('Marta', '123456');
INSERT INTO usuarios(usuarios, contraseña) VALUES ('Jorge', '123456');
INSERT INTO usuarios(usuarios, contraseña) VALUES ('Sergio', '123456');

SELECT * from usuarios;

SELECT usuarios, contraseña from usuarios;

SELECT * FROM usuarios WHERE upper(usuarios)=upper('marta') AND contraseña='123456';

INSERT INTO lista (lista) VALUES ('lista 1');
SELECT lista FROM lista;
SELECT * from lista;

INSERT INTO persona VALUES(null,'Samuel','Garcia','Gergien 344','lister@gmail.com','1997-03-23','Soy un autodidacta apacionado a la informatica',
'http:foto.wwww.es/perfil');

INSERT INTO persona VALUES(null,'Guido Abel','Sanchez','Vanfield 388','sanchezguidorl@gmail.com','1999-05-05','Desarrollador web full stack, especializado en desarrollo backend con laravel',
'http:foto.wwww.es/perfil');

INSERT INTO tipo_proyecto VALUES(null,'App-Movil');
INSERT INTO tipo_proyecto VALUES(null,'App-Web');
INSERT INTO tipo_proyecto VALUES(null,'LIBRARY');
INSERT INTO tipo_proyecto VALUES(null,'SPA');

INSERT INTO estudios VALUES(1,'San Javier de Paul','2018-03-01','Finalizado',1);

INSERT INTO estudios VALUES(2,'Algoritmos Javascript','2022-02-01','Finalizado',3);

INSERT INTO estudios VALUES(3,'Master en PHP,SQL,LARAVEL y SIFONY','2021-08-01','Finalizado',2);

INSERT INTO estudios VALUES(4,'Tecnicatura universitaria en Programación','2020-03-01','En curso',2);


INSERT INTO proyectos VALUES(1,'Ecohousing','http://pagina.com','Esta es una pagina de ejemplo para la db','http://imagen.net',
'2021-09-01',2,2);

INSERT INTO proyectos VALUES(2,'Plasticint','http://pagina.com','Esta es una pagina de ejemplo para la db','http://imagen.net',
'2021-09-01',1,2);

INSERT INTO proyectos VALUES(3,'Netflox','http://pagina.com','Esta es una pagina de ejemplo para la db','http://imagen.net',
'2021-09-01',3,1);

INSERT INTO proyectos VALUES(4,'BabyShark','http://pagina.com','Esta es una pagina de ejemplo para la db','http://imagen.net',
'2021-09-01',1,4);

SELECT * FROM proyectos;
SELECT * FROM persona;
SELECT * FROM estudios;

SELECT * FROM estudios INNER JOIN persona ON persona.id=estudios.persona_id;

SELECT persona.nombre, estudios.nombre_institucion FROM estudios LEFT JOIN persona ON persona.id=estudios.persona_id;

SELECT * FROM proyectos LEFT JOIN persona ON persona.id=proyectos.persona_id WHERE persona.id=1;

SELECT COUNT(id) FROM estudios WHERE persona_id=2;
UPDATE persona SET nombre='Cosme Fulanito' WHERE id=2;
DELETE FROM estudios WHERE persona_id=3;


